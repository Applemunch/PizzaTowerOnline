if con == 0
{
	tryconnect = 0;
	if draw_editorbutton((room_width / 2) - 192 / 2, (room_height / 2) - 48 / 2, "ONLINE")
	{
		if !os_is_network_connected(false)
		{
			scr_soundeffect(sfx_enemyprojectile)
			with obj_roomname
			{
				message = "CONNECT TO NETWORK";
				showtext = true;
				alarm[0] = 200;
			}
		}
		else
		{
			alarm[1] = 5;
			con = 1;
		}
	}
}
if con == 1
{
	draw_set_font(global.bigfont);
	draw_set_colour(c_white);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(960 / 2 + random_range(-1, 1), 540 / 2, "LOADING");
	
	if tryconnect >= room_speed * 7
	{
		if draw_editorbutton(64, 32 + (debug * 64), "BACK")
		{
			instance_destroy(obj_gms);
			con = 0;
			
			alarm[0] = -1;
			alarm[1] = -1;
		}
	}
}

if debug && !instance_exists(obj_fadeout)
{
	if draw_editorbutton(64, 32, "SKIP")
	{
		instance_destroy(obj_login);
		con = -1;
		
		offline_travel();
	}
}