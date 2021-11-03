function scr_soundeffect()
{
	var snd = argument[irandom(argument_count-1)];
	
	if instance_exists(obj_music)
	{
		if snd == mu_timesup && scr_checkskin(checkskin.p_anton)
			snd = mu_antondeath;
		if snd == sfx_break && global.machsound == 1
			snd = sfx_machslide;
	
		if instance_exists(obj_player1)
		&& obj_player1.character == "SP"
		{
			if snd == sfx_parry && object_index != obj_coolpineapple
				snd = sfx_parrySP;
			if snd == sfx_collecttoppin
				snd = sfx_toppinjingleSP;
			if snd == sfx_collecttopping
				snd = sfx_toppingSP;
		}
		if snd == sfx_collecttopping or snd == sfx_toppingSP
			audio_stop_sound(snd);
	}
	
	return audio_play_sound(snd, 1, false);
}