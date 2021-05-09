/// @description 
if scr_checkskin(checkskin.p_anton)
{
	alarm[0] = 1;
	exit;
}

if !audio_is_playing(obj_music_set.music_editor)
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
			
	audio_stop_all()
	scr_sound(obj_music_set.music_editor)
	if continuous
    {
        audio_sound_set_track_position(global.music, fadeoff)
        continuous = false
    }
	pausedmusic = obj_music_set.music_editor
}