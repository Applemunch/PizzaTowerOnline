//Move Up and down
if !instance_exists(obj_keyconfig)
{
	if (-obj_player.key_left2 or keyboard_check_pressed(vk_left)) && optionselected > 0 
	{
		optionselected -= 1
		scr_soundeffect(sfx_step)
	}
	if (obj_player.key_right2 or keyboard_check_pressed(vk_right)) && optionselected < 1
	{
		optionselected += 1
		scr_soundeffect(sfx_step)
	}
}
//Full Screen
if optionselected == 1 && (obj_player.key_jump or keyboard_check_pressed(vk_enter))
{
	file_delete("saveData.ini")
	file_delete("saveData1.ini")
	file_delete("saveData2.ini")
	file_delete("saveData3.ini")
	
	audio_stop_all();
	scr_soundeffect(sfx_breakblock1);
	game_restart();
	
	/*
	global.mastervolume = 1;
	global.musicvolume = 0.6;
	global.machsound = 0;
	
	window_set_fullscreen(false);
	window_set_size(960, 540);
	
	global.option_resolution = 1;
	global.option_fullscreen = 1;
	with obj_option
	{
		option_resolution = global.option_resolution;
		option_fullscreen = global.option_fullscreen;
	}
	
	global.panicbg = 0;
	global.panicmelt = 0;
	global.panicshake = 1;
	
	ini_open("saveData.ini")

	// SAGE2019 achievements
	if !ini_section_exists("SAGE2019")
	{
		ini_write_string("SAGE2019","shotgunsnick",false);


		ini_write_string("SAGE2019","dungeonbackup",false);
		ini_write_string("SAGE2019","srank",false);
		ini_write_string("SAGE2019","snicksrank",false);
		ini_write_string("SAGE2019","combo10",false);
		ini_write_string("SAGE2019","secret",false);

		ini_write_string("SAGE2019","knight",false);

 
		ini_write_string("SAGE2019","toppin",false);
		ini_write_string("SAGE2019","treasure",false);


		ini_close()
	}

	global.SAGEshotgunsnick = false
	global.SAGEshotgunsnicknumber = 0

	global.SAGEdungeonbackup = false
	global.SAGEsrank = false
	global.SAGEsnicksrank = false
	global.SAGEcombo10 = false
	global.SAGEsecret = false

	global.SAGEknight = false
	global.SAGEknighttaken = false
 
	global.SAGEtoppin = false
	global.SAGEtreasure = false
	
	with obj_SAGE2019achievementmarker
	{
		snickshotgun = false
		dungeonbackup = false
		srank = false
		snicksrank = false
		combo10 = false
		secret = false
		knight = false
		toppin = false
		treasure = false
	}

	//instance_destroy(obj_option)
	instance_destroy()
	*/
}

//Finish
if (obj_player1.key_slap2 or keyboard_check_pressed(vk_escape)) or (optionselected = 0  && (obj_player1.key_jump or keyboard_check_pressed(vk_enter))) 
{
	scr_soundeffect(sfx_enemyprojectile)
	obj_option.visible = true
	audio_sound_gain(global.music, global.musicvolume, 0)
	instance_destroy()
}