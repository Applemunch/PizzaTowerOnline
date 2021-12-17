function scr_playersounds()
{
	//Sounds
	with obj_player1
	{
		// set mach sounds
		var _sfx_mach1 = global.machsound == 0 ? sfx_mach1 : sfx_mach1_old
		var _sfx_mach2 = global.machsound == 0 ? sfx_mach2 : sfx_mach2_old
		var _sfx_mach3 = global.machsound == 0 ? sfx_mach3 : sfx_mach3_old
		var _sfx_mach4 = global.machsound == 0 ? sfx_mach4 : sfx_mach3_old
		var _sfx_tumble3 = (global.machsound == 1 && sprite_index == spr_machroll) ? sfx_machroll : sfx_tumble3
		
		// mach1 sound
		if state == states.mach1 && grounded
		{
			if !audio_is_playing(mach1snd)
				mach1snd = audio_play_sound(_sfx_mach1, 1, false)
		}
		else
			audio_stop_sound(mach1snd)
		
		// mach2 sound
		if (sprite_index == spr_mach or sprite_index == spr_player_machhit or state == states.climbwall
		or (sprite_index == spr_rollgetup && image_index >= 8))
		&& state != states.backbreaker
		{
			if !audio_is_playing(mach2snd)
				mach2snd = audio_play_sound(_sfx_mach2, 1, true);
		}
		else
			audio_stop_sound(mach2snd);
		
		// mach3 sound
		if (state == states.mach3 or sprite_index == spr_mach3boost) && sprite_index != spr_crazyrun
		&& state != states.backbreaker
		{
			if !audio_is_playing(mach3snd)
				mach3snd = audio_play_sound(_sfx_mach3, 1, true);
		}
		else
			audio_stop_sound(mach3snd);
		
		// knightpep slope
		if state == states.knightpepslopes
		{
			if !audio_is_playing(knightslide)
				knightslide = audio_play_sound(sfx_knightslide, 1, true);
		}
		else
			audio_stop_sound(knightslide)
		
		// bombpep
		if (sprite_index == spr_bombpeprun or sprite_index == spr_bombpeprunabouttoexplode)
		&& state != states.backbreaker
		{
			if !audio_is_playing(bombpep1snd)
				bombpep1snd = audio_play_sound(sfx_bombpep1, 1, true)
		}
		else
			audio_stop_sound(bombpep1snd)
		
		// mach4
		if sprite_index == spr_crazyrun && state != states.backbreaker
		{
			if !audio_is_playing(mach4snd)
				mach4snd = audio_play_sound(_sfx_mach4, 1, false)
		}
		else
			audio_stop_sound(mach4snd)
		
		// sjump prep
		if state != states.Sjumpprep && audio_is_playing(sfx_superjumpprep)
			audio_stop_sound(sfx_superjumpprep)
		
		// sjump hold
		if state != states.Sjumpprep && audio_is_playing(superjumpholdsnd)
			audio_stop_sound(superjumpholdsnd)
		
		// tumble starting
		if sprite_index == spr_tumblestart && !audio_is_playing(tumble1snd) && floor(image_index) < 11
			tumble1snd = audio_play_sound(sfx_tumble1, 1, false)
		
		// tumble start
		if sprite_index == spr_tumblestart && floor(image_index) >= 11 && !audio_is_playing(sfx_tumble2)
		{
			tumble2snd = audio_play_sound(sfx_tumble2, 1, false)
			audio_stop_sound(tumble1snd)
		}
		
		// tumbling
		if (sprite_index == spr_tumble or sprite_index == spr_machroll) && !audio_is_playing(_sfx_tumble3) 
			tumble3snd = audio_play_sound(_sfx_tumble3, 1, true)
		
		// stop tumbling sounds
		if state != states.tumble && (sprite_index != spr_machroll or state == states.backbreaker)
		{
			audio_stop_sound(tumble1snd)
			audio_stop_sound(tumble2snd)
			audio_stop_sound(tumble3snd)
		}
		
		// stop suplex dash sound
		if audio_is_playing(suplexdashsnd) && state != states.handstandjump
			audio_stop_sound(suplexdashsnd)
	}
}