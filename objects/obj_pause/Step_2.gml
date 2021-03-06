if instance_exists(obj_gms) && gms_info_isloggedin()
	gms_self_set("pause", pause);

if instance_exists(obj_pausefadeout) && (instance_exists(obj_fadeout) or !canpause)
	instance_destroy(obj_pausefadeout);

// start pausing
if !pause && !instance_exists(obj_fadeout) && !instance_exists(obj_pausefadeout)
{
	var kstart = false;
	if instance_exists(obj_player)
		kstart = obj_player.key_start;
	else
	{
		scr_getinput();
		kstart = key_start;
	}
	
	// pressed pause button
    if kstart && (room != rank_room && room != Realtitlescreen && room != timesuproom && room != characterselect && room != editor_entrance)
	{
		keyboard_clear(global.key_jump);
		
		if !check_race() && (!instance_exists(obj_player1) or (obj_player1.state != states.grabbed && obj_player1.baddiegrabbedID != obj_otherplayer))
		{
			selected = 0;
			objectlist = [];
			instance_create(x, y, obj_pausefadeout);
		}
		else
			scr_soundeffect(sfx_denied);
    }
}

if pause
{
	if !string_startswith(konami, "UUDDLRLR")
	    scr_getinput();
	
	//DDP Always draw normally while paused
	application_surface_draw_enable(true)
	
	if instance_exists(obj_pausefadeout) && !obj_pausefadeout.fadein
		exit;
	
    if key_down2 && selected < 2
	{
        selected += 1
		scr_soundeffect(sfx_step)
    }

    if key_up2 && selected > 0
	{
		selected -= 1
		scr_soundeffect(sfx_step)
    }

	if key_jump && selected == 1
	{
		if !global.snickchallenge
		{
			var roomname = room_get_name(room)

			if string_startswith(roomname, "entrance")
			or string_startswith(roomname, "medieval")
			or string_startswith(roomname, "chateau")
			or string_startswith(roomname, "ruin")
			or string_startswith(roomname, "dungeon")
			or string_startswith(roomname, "floor1_")
			or string_startswith(roomname, "floor2_")
			or string_startswith(roomname, "floor3_")
			or string_startswith(roomname, "floor4_")
			or string_startswith(roomname, "floor5_")
			or string_startswith(roomname, "golf")
			or string_startswith(roomname, "graveyard")
			or string_startswith(roomname, "farm")
			or string_startswith(roomname, "ufo")
			or string_startswith(roomname, "dragonlair")
			or string_startswith(roomname, "strongcold")
			or string_startswith(roomname, "beach")
			or string_startswith(roomname, "forest")
			or string_startswith(roomname, "kungfu")
			or string_startswith(roomname, "minigolf")
			or string_startswith(roomname, "war")
			or string_startswith(roomname, "etb")
			or string_startswith(roomname, "ancient")
			or string_startswith(roomname, "grinch")
			or string_startswith(roomname, "cotton")
			or string_startswith(roomname, "jawbreaker")
			or room == custom_lvl_room
			{
				instance_activate_all();
				alarm[0] = 1;
			}
			else
				scr_soundeffect(sfx_enemyprojectile)
		}
		else if global.snickchallenge or global.snickrematch
		{
			instance_activate_all();
			alarm[2] = 1;
		}
	}

    if key_jump2 && selected == 2
	{
		instance_activate_all();
		alarm[1] = 1;
    }

    if key_jump2 && selected == 0
	{
        if !instance_exists(obj_pausefadeout)
			instance_create(x, y, obj_pausefadeout);
    }
	
	// konami code
	if alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1 && !global.funmode && string_startswith(room_get_name(room), "golf") && !global.timeattack
	{
		switch keyboard_lastkey
		{
			case vk_up:
				konami += "U";
				break;
			case vk_down:
				konami += "D";
				break;
			case vk_left:
				konami += "L";
				break;
			case vk_right:
				konami += "R";
				break;
			case global.key_jump:
				konami += "A";
				break;
			case global.key_slap:
				konami += "B";
				break;
		}
		if konami != "" && string_copy(konamiend, 1, string_length(konami)) != konami
			konami = "";
		
		if konami == konamiend
		{
			global.funmode = true;
			scr_soundeffect(sfx_collecttoppin);
			keyboard_clear(keyboard_lastkey);
			instance_create(x, y, obj_pausefadeout)
			konami = "";
		}
		keyboard_lastkey = -1;
	}
}
else
	konami = "";