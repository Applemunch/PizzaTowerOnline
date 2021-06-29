/// @description 
if scr_checkskin(checkskin.p_anton)
{
	alarm[0] = 1;
	exit;
}

if (lemusic != obj_music_set.music_editor && audio_is_playing(pausedmusic))
or lemusic == -1
{
	var mus = obj_music_set.music_editor;
	if mus == mu_entrance
	{
		switch obj_player1.character
		{
			case "P":
				mus = mu_entrance
				break
			case "N":
				mus = mu_noiseentrance
				break
			case "V":
				mus = mu_vigientrance
				break
			case "S":
				mus = mu_snickentrance
				break
		}
	}
	var musfinal = mus;
	
	// pizza castle
	if global.musicgame == 1
	{
		// placeholders
		if musfinal == mu_snickentrance or musfinal == mu_vigientrance
			musfinal = mu_entrance_pc
		else
		{
			// replace the sound
			var sndrep = asset_get_index(audio_get_name(musfinal) + "_pc");
			if audio_exists(sndrep)
				musfinal = sndrep;
		}
	}
	
	audio_stop_all()
	scr_sound(musfinal)
	if continuous
    {
        audio_sound_set_track_position(global.music, fadeoff)
        continuous = false
    }
	pausedmusic = musfinal
	lemusic = mus
}