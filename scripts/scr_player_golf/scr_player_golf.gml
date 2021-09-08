function scr_player_golf()
{
	if image_index >= image_number - 1
	{
		switch sprite_index
		{
			case spr_golflook1:
				sprite_index = spr_golflook2;
				break;
			case spr_golflook3:
				sprite_index = spr_golfidle;
				break;
		}
	}
	
	global.combotime = 60;
	global.heattime = 60;
	
	if !instance_exists(golfid) or golfid.state != states.golf
	    state = states.normal;
	else if sprite_index != spr_golfswing
	{
		with obj_camera
			detach = other.key_attack;
	}
	else
	{
		with obj_camera
			detach = false;
	}
}