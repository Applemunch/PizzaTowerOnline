function scr_getmidi(mus)
{
	// placeholders
	if mus == mu_antonpunchball
		mus = mu_antonlevel_pc
	else if mus == mu_kidsparty
		mus = mu_characterselect_pc
	else if mus == mu_hub2
		mus = mu_characterselect_pc
	else if mus == mu_snickentrance or mus == mu_vigientrance
		mus = mu_entrance_pc
	else if mus == mu_susgolf
		mus = mu_minigolf_pc
	else if mus == mu_strongcoldsecret
		mus = mu_dungeonsecret_pc
	else
	{
		// replace the sound
		var sndrep = asset_get_index(audio_get_name(mus) + "_pc");
		if audio_exists(sndrep)
			mus = sndrep;
	}
	
	return mus;
}
