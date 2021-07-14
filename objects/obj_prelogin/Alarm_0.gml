audio_stop_sound(global.music);
if global.musicvolume > 0
{
	if global.musicgame == 1
		scr_sound(mu_prelogin_pc);
	else
		scr_sound(mu_prelogin);
}