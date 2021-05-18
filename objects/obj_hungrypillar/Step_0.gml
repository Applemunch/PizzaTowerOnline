if room == rm_editor exit;

//Scared
if ((obj_player1.x > x - 400) && (obj_player1.x < x + 400)) && sprite_index != spr_hungrypillar_angry
	sprite_index = spr_hungrypillar_angry
else if  !((obj_player1.x > x - 400) && (obj_player1.x < x + 400)) && sprite_index =  spr_hungrypillar_angry
{
	sprite_index = spr_hungrypillar_happy
	alarm[0] = 100
}

if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;

if song != -1 && audio_is_playing(song)
{
	if global.panic
	{
		audio_stop_sound(song);
		song = -1;
	}
	else
	{
		if audio_is_paused(song)
			audio_resume_sound(song);
		
		var vol = clamp((1 - (point_distance(x, y, obj_player1.x, obj_player1.y) / 300)) + 1, 0, 1);
		if room == custom_lvl_room && instance_exists(obj_player1.cam)
		{
			if !rectangle_in_rectangle(
			x - sprite_xoffset, y - sprite_yoffset, x + sprite_xoffset - 1, y + sprite_yoffset - 1,
			obj_player1.cam.x, obj_player1.cam.y, obj_player1.cam.x + obj_player1.cam_width, obj_player1.cam.y + obj_player1.cam_height)
				vol = 0;
		}
		var mult = 1;
		if global.musicgame == 1
			mult = 1.7;
		
		var mv = global.musicvolume * mult;
		audio_sound_gain(song, vol * mv, 0);
		audio_sound_gain(global.music, mv - (vol * mv), 0);
	}
}
else if !global.panic
{
	audio_stop_sound(song);
	song = -1;
	
	if ((room != dungeon_10 && !string_startswith(room_get_name(room), "dragonlair")) or scr_checkskin(checkskin.p_anton)) && global.musicvolume > 0
	{
		if global.musicgame == 1
			song = audio_play_sound(mu_dungeondepth_pc, 10, true);
		else if scr_checkskin(checkskin.p_anton)
			song = audio_play_sound(mu_antondepth, 10, true);
		else
			song = audio_play_sound(mu_dungeondepth, 10, true);
		audio_sound_gain(song, 0, 0);
	}
}