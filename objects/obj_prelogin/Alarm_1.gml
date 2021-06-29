/// @description create login
if instance_exists(obj_gms)
{
	if !gms_info_isconnected()
	{
		if !global.__socket_connecting
		{
			tryconnect = 0;
			
			scr_soundeffect(sfx_enemyprojectile)
			with obj_roomname
			{
				message = "CANNOT CONNECT TO NETWORK";
				showtext = true;
				alarm[0] = 200;
			}
			con = 0;
		}
		else
		{
			alarm[1] = 1;
			tryconnect++;
		}
	}
	else
	{
		tryconnect = 0;
		
		event_user(0);
		instance_create(0, 0, obj_login);
	}
}
else if !variable_global_exists("logged") or global.logged == false
{
	tryconnect = 0;
	
	instance_create_depth(0, 0, 0, obj_gms);
	alarm[1] = 1;
}