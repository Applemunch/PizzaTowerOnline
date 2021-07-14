if con == 0
{
	tryconnect = 0;
	if draw_editorbutton((room_width / 2) - (192 / 2) - 120, (room_height / 2) - 48 / 2, lang_string("prelogin.offline"))
	{
		global.saveslot = "1";
		
		alpha = 0;
		event_user(0);
		con = 2;
		
		instance_destroy(obj_characterselect);
		instance_create(0, 0, obj_characterselect);
		instance_create(0, 71, obj_peppinoselect);
		instance_create(371, 170, obj_noiseselect);
	}
	if draw_editorbutton((room_width / 2) - (192 / 2) + 120, (room_height / 2) - 48 / 2, lang_string("prelogin.online"))
	{
		global.saveslot = "";
		if !os_is_network_connected(false)
		{
			scr_soundeffect(sfx_enemyprojectile)
			with obj_roomname
			{
				message = lang_string("prelogin.nonet");
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
	draw_text(960 / 2 + random_range(-1, 1), 540 / 2, lang_string("prelogin.loading"));
	
	if tryconnect >= room_speed * 7
	{
		if draw_editorbutton(64, 32, lang_string("prelogin.back"))
		{
			instance_destroy(obj_gms);
			con = 0;
			
			alarm[0] = -1;
			alarm[1] = -1;
		}
	}
}
if con == 2
{
	if !(instance_exists(obj_characterselect) && obj_characterselect.ready)
	{
		if draw_editorbutton(64, 32, lang_string("prelogin.back"))
		{
			with obj_characterselect
				goback = true;
			instance_destroy(obj_peppinoselect);
			instance_destroy(obj_noiseselect);
			con = 0;
		}
	}
}

/*
if debug && !instance_exists(obj_fadeout)
{
	if draw_editorbutton(64, 32, lang_string("prelogin.skip"))
	{
		instance_destroy(obj_login);
		con = -1;
		
		offline_travel();
	}
}
*/