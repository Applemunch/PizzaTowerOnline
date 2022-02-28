/// @description play music
alarm[0] = -1;

if !playmusic
{
	if global.musicvolume > 0
	{
		audio_stop_sound(global.music);
		if global.musicgame == 1
			scr_sound(mu_characterselect_pc);
		else
			scr_sound(mu_characterselect);
	}
	
	playmusic = true;
}

con = -1;
