function scr_sound(snd)
{
	/// @param music
	/// @param <loops>
	var loop = (argument_count > 1 ? argument[1] : true);
	
	global.music = audio_play_sound(snd, 10, loop);
	
	if room != rm_disclaimer
	{
		/*
		if global.musicgame == 1
			audio_sound_gain(global.music, min(global.musicvolume * 1.6, 1), 1);
		else
		*/
			audio_sound_gain(global.music, global.musicvolume, 1);
	}
	
	return global.music;
}