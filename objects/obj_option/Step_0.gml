if live_call() return live_result;

//Move Up and down
var move = obj_player1.key_left2 + obj_player1.key_right2;
if !instance_exists(obj_keyconfig) && !instance_exists(obj_erasegame)
{
	var omax = 4;
	if menu == 1
		omax = 2 + global.loaded_pc;
	if menu == 2
		omax = 13;
	
	if (obj_player1.key_up2 or keyboard_check_pressed(vk_up))
	{
		if optionselected > 0
		{
			optionselected -= 1
			scr_soundeffect(sfx_step)
		}
		else if menu == 2
		{
			optionselected = omax;
			scr_soundeffect(sfx_step)
		}
	}
	if (obj_player1.key_down2 or keyboard_check_pressed(vk_down))
	{
		if optionselected < omax
		{
			optionselected += 1
			scr_soundeffect(sfx_step)
		}
		else if menu == 2
		{
			optionselected = 0;
			scr_soundeffect(sfx_step)
		}
	}
}

#region main options
if menu == 0
{
	//Full Screen
	if optionselected = 0 
	{
		if (obj_player1.key_right2 or keyboard_check_pressed(vk_right)) && optionsaved_fullscreen = 0
			optionsaved_fullscreen = 1
		if (-obj_player1.key_left2 or keyboard_check_pressed(vk_left)) && optionsaved_fullscreen = 1
			optionsaved_fullscreen = 0

		if (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && optionsaved_fullscreen = 0
		{
			window_set_fullscreen(true);
			ini_open("saveData.ini");
			global.option_fullscreen = 0
			ini_write_real("Option","fullscreen",0)  
			ini_close();
			
			with obj_roomname
			{
				showtext = true;
				message = "SAVED!";
				alarm[0] = 60;
			}
		}
		if (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && optionsaved_fullscreen = 1
		{
			window_set_fullscreen(false);
			ini_open("saveData.ini");
			global.option_fullscreen = 1
			ini_write_real("Option","fullscreen",1)  
			ini_close();
			
			with obj_roomname
			{
				showtext = true;
				message = "SAVED!";
				alarm[0] = 60;
			}
		}
	}

	//Resolution
	if optionselected = 1
	{
		if (obj_player1.key_right2 or keyboard_check_pressed(vk_right)) && optionsaved_resolution < 2
			optionsaved_resolution += 1

		if (-obj_player1.key_left2 or keyboard_check_pressed(vk_left)) && optionsaved_resolution > 0
			optionsaved_resolution -= 1

		if (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && optionsaved_resolution = 0
		{
			ini_open("saveData.ini");
			global.option_resolution = 0
			ini_write_real("Option","resolution",0)  
			ini_close();
			window_set_size( 480, 270 );
			
			with obj_roomname
			{
				showtext = true;
				message = "SAVED!";
				alarm[0] = 60;
			}
		}
		if (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && optionsaved_resolution = 1
		{
			window_set_size( 960, 540 );
			ini_open("saveData.ini");
			global.option_resolution = 1
			ini_write_real("Option","resolution",1)  
			ini_close();
			
			with obj_roomname
			{
				showtext = true;
				message = "SAVED!";
				alarm[0] = 60;
			}
		}
		if (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && optionsaved_resolution = 2
		{
			window_set_size( 1920, 1080 );
			ini_open("saveData.ini");
			global.option_resolution = 2
			ini_write_real("Option","resolution",2)  
			ini_close();
			
			with obj_roomname
			{
				showtext = true;
				message = "SAVED!";
				alarm[0] = 60;
			}
		}
	}

	if optionselected == 2 && !instance_exists(obj_keyconfig)
	&& ((obj_player1.key_jump or keyboard_check_pressed(vk_enter)) or keyboard_check_pressed(vk_enter))
	{
		scr_soundeffect(sfx_step)
		visible = false
		instance_create(x,y,obj_keyconfig)
	}
	
	if optionselected == 3 && !instance_exists(obj_keyconfig)
	&& ((obj_player1.key_jump or keyboard_check_pressed(vk_enter)) or keyboard_check_pressed(vk_enter))
	{
		scr_soundeffect(sfx_step)
		menu = 1
		optionselected = 0
	}

	if optionselected == 4 && !instance_exists(obj_keyconfig)
	&& ((obj_player1.key_jump or keyboard_check_pressed(vk_enter)) or keyboard_check_pressed(vk_enter))
	{
		scr_soundeffect(sfx_step)
		menu = 2
		optionselected = 0
	}

	//Finish
	if (obj_player1.key_slap2 or keyboard_check_pressed(vk_escape)) && !instance_exists(obj_keyconfig)
	{
		scr_soundeffect(sfx_enemyprojectile)
		with obj_mainmenuselect
			selected = false
		obj_player1.state = 0;
		instance_destroy()
	}
}
#endregion
#region sound options
else if menu == 1
{
	// master volume slider
	if optionselected = 0
	{
		if keyboard_check(vk_shift)
			var move = (obj_player1.key_left2 + obj_player1.key_right2) * 0.01;
		else
			var move = (obj_player1.key_left + obj_player1.key_right) * 0.02;
		
		global.mastervolume = clamp(global.mastervolume + move, 0, 1);
		if keyboard_check_pressed(ord("R"))
			global.mastervolume = 1;
		
		audio_master_gain(global.mastervolume / (!code_is_compiled() + 1));
	}
	
	// music volume slider
	if optionselected = 1
	{
		if keyboard_check(vk_shift)
			var move = (obj_player1.key_left2 + obj_player1.key_right2) * 0.01;
		else
			var move = (obj_player1.key_left + obj_player1.key_right) * 0.02;
		
		global.musicvolume = clamp(global.musicvolume + move, 0, 1);
		audio_sound_gain(global.music, global.musicvolume, 0);
		
		if keyboard_check_pressed(ord("R"))
			global.musicvolume = 0.6;
		
		if global.musicvolume > 0 && !audio_is_playing(global.music)
		{
			with obj_music
			{
				forcefadeoff = 4.8;
				event_perform(ev_other, ev_room_start);
			}
		}
	}
	
	// mach sound
	if optionselected == 2
	{
		audio_sound_gain(global.music, min(global.musicvolume, 0.2), 100);
		if (obj_player1.key_right2 or keyboard_check_pressed(vk_right)) && global.machsound = 1
			global.machsound = 0
		if (-obj_player1.key_left2 or keyboard_check_pressed(vk_left)) && global.machsound = 0
			global.machsound = 1
		
		var _sfx_mach2 = global.machsound == 0 ? sfx_mach2 : sfx_mach2_old
		
		if (audio_is_playing(sfx_mach2) && _sfx_mach2 != sfx_mach2)
		or (audio_is_playing(sfx_mach2_old) && _sfx_mach2 != sfx_mach2_old)
		{
			audio_stop_sound(sfx_mach2);
			audio_stop_sound(sfx_mach2_old);
			scr_soundeffect(_sfx_mach2);
		}
		if !audio_is_playing(sfx_mach2) && !audio_is_playing(sfx_mach2_old)
			scr_soundeffect(_sfx_mach2);
	}
	else
	{
		audio_sound_gain(global.music, global.musicvolume, 100);
		audio_stop_sound(sfx_mach2);
		audio_stop_sound(sfx_mach2_old);
	}
	
	// tower and castle
	if optionselected == 3
	{
		if (obj_player1.key_right2 or keyboard_check_pressed(vk_right)) && global.musicgame = 0
		{
			global.musicgame = 1
			audio_stop_sound(global.music);
			with obj_music
				event_perform(ev_other, ev_room_start);
		}
		if (-obj_player1.key_left2 or keyboard_check_pressed(vk_left)) && global.musicgame = 1
		{
			global.musicgame = 0
			audio_stop_sound(global.music);
			with obj_music
				event_perform(ev_other, ev_room_start);
		}
	}
	
	//Finish
	if (obj_player1.key_slap2 or keyboard_check_pressed(vk_escape)) && !instance_exists(obj_keyconfig)
	{
		scr_soundeffect(sfx_enemyprojectile)
		menu = 0
		optionselected = 3
		
		audio_stop_sound(sfx_mach2);
		audio_stop_sound(sfx_mach2_old);
		audio_sound_gain(global.music, global.musicvolume, 0);
		
		ini_open("saveData.ini");
		ini_write_real("online","musicvolume",global.musicvolume)  
		ini_write_real("online","mastervolume",global.mastervolume)
		ini_write_real("online","machsound",global.machsound)
		ini_write_real("online","musicgame",global.musicgame)
		ini_close();
		
		if global.musicvolume <= 0 && audio_is_playing(global.music)
			audio_stop_sound(global.music);
		audio_master_gain(global.mastervolume / (!code_is_compiled() + 1));
		
		with obj_roomname
		{
			showtext = true;
			message = "SAVED!";
			alarm[0] = 60;
		}
	}
}
#endregion
#region other options
else if menu == 2 && !instance_exists(obj_erasegame)
{
	var select = obj_player1.key_jump or keyboard_check_pressed(vk_enter);
	
	// erase game
	if optionselected = 0
	&& select
	{
		scr_soundeffect(sfx_step)
		visible = false
		instance_create(x,y,obj_erasegame)
	}
	
	// gameplay style
	if optionselected = 1
	{
		if select
		{
			global.gameplay = !global.gameplay;
			scr_soundeffect(sfx_step);
		}
		if move != 0 && max(move, 0) != global.gameplay
		{
			global.gameplay = max(move, 0);
			scr_soundeffect(sfx_step);
		}
	}
	
	// panic bg
	if optionselected = 2
	{
		if select
		{
			if check_shaders()
			{
				global.panicbg = !global.panicbg;
				scr_soundeffect(sfx_step);
			}
			else
				scr_soundeffect(sfx_denied);
		}
	}
	
	// panic melt
	if optionselected = 3
	{
		if select
		{
			global.panicmelt = !global.panicmelt;
			scr_soundeffect(sfx_step);
		}
	}
	
	// panic shake
	if optionselected = 4
	{
		if select
		{
			global.panicshake = !global.panicshake;
			scr_soundeffect(sfx_step);
		}
	}
	
	// panic change bg
	if optionselected = 5
	{
		if select
		{
			global.panicnightmare = !global.panicnightmare;
			scr_soundeffect(sfx_step);
		}
	}
	
	// surface afterimages
	if optionselected = 6
	{
		if select
		{
			global.surfacemach = !global.surfacemach;
			scr_soundeffect(sfx_step);
		}
	}
	
	// secret debris
	if optionselected = 7
	{
		if select
		{
			global.secretdebris = !global.secretdebris;
			scr_soundeffect(sfx_step);
		}
	}
	
	// show names
	if optionselected = 8
	{
		if select
		{
			global.shownames = !global.shownames;
			scr_soundeffect(sfx_step);
		}
	}
	
	// chat bubbles
	if optionselected = 9
	{
		if select
		{
			global.chatbubbles = !global.chatbubbles;
			scr_soundeffect(sfx_step);
		}
	}
	
	// sync effects
	if optionselected == 10
	{
		if select
		{
			//global.pvp = !global.pvp;
			global.synceffect = !global.synceffect;
			scr_soundeffect(sfx_step);
		}
	}
	
	// streamer
	if optionselected == 11
	{
		if select
		{
			global.streamer = !global.streamer;
			scr_soundeffect(sfx_step);
		}
	}
	
	// drpc
	if optionselected == 12
	{
		if select
		{
			global.richpresence = !global.richpresence;
			scr_soundeffect(sfx_step);
		}
	}
	
	// fps count
	if optionselected == 13
	{
		if select
		{
			global.showfps = !global.showfps;
			scr_soundeffect(sfx_step);
		}
	}
	
	//Finish
	if (obj_player1.key_slap2 or keyboard_check_pressed(vk_escape)) && !instance_exists(obj_keyconfig)
	{
		scr_soundeffect(sfx_enemyprojectile)
		menu = 0
		optionselected = 4
		
		ini_open("saveData.ini");
		ini_write_real("online","gameplay",global.gameplay)
		obj_player1.noisetype = global.gameplay;
		
		ini_write_real("online","panicmelt",global.panicmelt)  
		ini_write_real("online","panicbg",global.panicbg)  
		ini_write_real("online","panicshake",global.panicshake)
		ini_write_real("online","panicnightmare",global.panicnightmare)
		
		ini_write_real("online","surfacemach",global.surfacemach)
		ini_write_real("online","secretdebris",global.secretdebris)
		ini_write_real("online","shownames",global.shownames)
		ini_write_real("online","chatbubbles",global.chatbubbles)
		//ini_write_real("online","pvp",global.pvp)
		ini_write_real("online","synceffect",global.synceffect)
		ini_write_real("online","richpresence",global.richpresence)
		ini_write_real("online","streamer",global.streamer)
		ini_write_real("online","showfps",global.showfps)
		ini_close();
		
		if obj_drpc_updater.running != global.richpresence
		{
			with obj_drpc_updater
			{
				if !running
					event_user(0);
				else
					event_user(1);
			}
		}
		
		if variable_global_exists("__chat_bubbles")
			global.__chat_bubbles = global.chatbubbles;
		
		with obj_roomname
		{
			showtext = true;
			message = "SAVED!";
			alarm[0] = 60;
		}
	}
}
#endregion