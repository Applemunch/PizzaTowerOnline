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
		if state == states.mach1 && !audio_is_playing(_sfx_mach1) && grounded
			mach1snd = audio_play_sound(_sfx_mach1, 1, false)
		else if (state != states.mach1 or !grounded or move == -xscale)
		&& audio_is_playing(mach1snd)
			audio_stop_sound(mach1snd)
		
		// mach2 sound
		if (sprite_index == spr_mach or sprite_index == spr_player_machhit or state == states.climbwall)
		&& !audio_is_playing(_sfx_mach2) && state != states.backbreaker
			mach2snd = audio_play_sound(_sfx_mach2, 1, false)
		else if ((sprite_index != spr_mach && state != states.climbwall) or state == states.backbreaker) && audio_is_playing(mach2snd)
			audio_stop_sound(mach2snd)
		
		// mach3 sound
		if (state == states.mach3 or sprite_index == spr_mach3boost) && sprite_index != spr_crazyrun
		&& !audio_is_playing(_sfx_mach3) && state != states.backbreaker
			mach3snd = audio_play_sound(_sfx_mach3, 1, false)
		else if ((state != states.mach3 && sprite_index != spr_mach3boost) or sprite_index == spr_crazyrun or state == states.backbreaker)
		&& audio_is_playing(mach3snd)
			audio_stop_sound(mach3snd)
		
		// knightpep slope
		if state == states.knightpepslopes && !audio_is_playing(sfx_knightslide)
			knightslide = audio_play_sound(sfx_knightslide, 1, false)
		else if state != states.knightpepslopes && audio_is_playing(knightslide)
			audio_stop_sound(knightslide)
		
		// bombpep
		if (sprite_index == spr_bombpeprun or sprite_index == spr_bombpeprunabouttoexplode) && !audio_is_playing(sfx_bombpep1)
		 && state != states.backbreaker
			bombpep1snd = audio_play_sound(sfx_bombpep1, 1, false)
		else if ((sprite_index != spr_bombpeprun && sprite_index != spr_bombpeprunabouttoexplode) or state == states.backbreaker) && audio_is_playing(bombpep1snd)
			audio_stop_sound(bombpep1snd)
		
		// mach4
		if sprite_index = spr_crazyrun && !audio_is_playing(_sfx_mach4) && state != states.backbreaker
			mach4snd = audio_play_sound(_sfx_mach4, 1, false)
		else if (sprite_index != spr_crazyrun or state == states.backbreaker) && audio_is_playing(mach4snd)
			audio_stop_sound(mach4snd)
		
		// sjump prep
		if state != states.Sjumpprep && audio_is_playing(sfx_superjumpprep)
			audio_stop_sound(sfx_superjumpprep)
		
		// sjump hold
		if state != states.Sjumpprep && audio_is_playing(superjumpholdsnd)
			audio_stop_sound(superjumpholdsnd)
		
		// tumble starting
		if sprite_index == spr_tumblestart && !audio_is_playing(sfx_tumble1) && floor(image_index) < 11
			tumble1snd = audio_play_sound(sfx_tumble1, 1, false)
		
		// tumble start
		if sprite_index == spr_tumblestart && floor(image_index) >= 11 && !audio_is_playing(sfx_tumble2)
		{
			tumble2snd = audio_play_sound(sfx_tumble2,1,false)
			audio_stop_sound(tumble1snd)
		}
		
		// tumbling
		if (sprite_index == spr_tumble or sprite_index == spr_machroll) && !audio_is_playing(_sfx_tumble3) 
			tumble3snd = audio_play_sound(_sfx_tumble3, 1, false)
		
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