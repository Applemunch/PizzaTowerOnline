function scr_playersounds() {
	//Sounds


	with obj_player1
	{
	var _sfx_mach1 = global.machsound == 0 ? sfx_mach1 : sfx_mach1_old
	var _sfx_mach2 = global.machsound == 0 ? sfx_mach2 : sfx_mach2_old
	var _sfx_mach3 = global.machsound == 0 ? sfx_mach3 : sfx_mach3_old
	var _sfx_mach4 = global.machsound == 0 ? sfx_mach4 : sfx_mach3_old
	var _sfx_tumble3 = (global.machsound == 1 && sprite_index == spr_machroll) ? sfx_machroll : sfx_tumble3

	if state =states.mach1 && !audio_is_playing(_sfx_mach1) && grounded
	{
	mach1snd = audio_play_sound(_sfx_mach1,1,false)
	}
	else if state !=states.mach1 or !grounded or move = -xscale
	audio_stop_sound(mach1snd)

	if  (sprite_index = spr_mach or state = states.climbwall) && !audio_is_playing(_sfx_mach2)
	{
	mach2snd = audio_play_sound(_sfx_mach2,1,false)

	}
	else 
	if  (sprite_index != spr_mach && state != states.climbwall) 
	audio_stop_sound(mach2snd)




	if (state =states.mach3 or sprite_index = spr_mach3boost) && sprite_index != spr_crazyrun && !audio_is_playing(_sfx_mach3)
	{
	mach3snd = audio_play_sound(_sfx_mach3,1,false)
	}
	else if (state !=states.mach3  && sprite_index != spr_mach3boost) or sprite_index = spr_crazyrun
	audio_stop_sound(mach3snd)

	if state =states.knightpepslopes  && !audio_is_playing(sfx_knightslide)
	{
	knightslide = audio_play_sound(sfx_knightslide,1,false)
	}
	else if state !=states.knightpepslopes && audio_is_playing(sfx_knightslide)
	audio_stop_sound(knightslide)

	if (sprite_index = spr_bombpeprun or sprite_index = spr_bombpeprunabouttoexplode)  && !audio_is_playing(sfx_bombpep1)
	{
	bombpep1snd =  audio_play_sound(sfx_bombpep1,1,false)
	}
	else if sprite_index != spr_bombpeprun && sprite_index != spr_bombpeprunabouttoexplode && audio_is_playing(sfx_bombpep1)
	audio_stop_sound(bombpep1snd)

	if sprite_index = spr_crazyrun && !audio_is_playing(_sfx_mach4)
	{
	mach4snd = audio_play_sound(_sfx_mach4,1,false)
	}
	else if sprite_index != spr_crazyrun
	audio_stop_sound(mach4snd)




	if state !=states.Sjumpprep && audio_is_playing(sfx_superjumpprep)
		audio_stop_sound(sfx_superjumpprep)

	if state !=states.Sjumpprep && audio_is_playing(superjumpholdsnd)
		audio_stop_sound(superjumpholdsnd)

	if sprite_index = spr_tumblestart && !audio_is_playing(sfx_tumble1) && floor(image_index) < 11
		tumble1snd =audio_play_sound(sfx_tumble1,1,false)

	if sprite_index = spr_tumblestart  && floor(image_index) = 11 && !audio_is_playing(sfx_tumble2)
	{
		tumble2snd =audio_play_sound(sfx_tumble2,1,false)
		audio_stop_sound(tumble1snd)
	}
	
	if (sprite_index = spr_tumble or sprite_index = spr_machroll) && !audio_is_playing(_sfx_tumble3) 
	tumble3snd = audio_play_sound(_sfx_tumble3,1,false)

	if state != states.tumble &&  (sprite_index != spr_machroll)
	{
		audio_stop_sound(tumble1snd)
		audio_stop_sound(tumble2snd)
		audio_stop_sound(tumble3snd)
	}

	if audio_is_playing(suplexdashsnd) && state != states.handstandjump
	audio_stop_sound(suplexdashsnd)
	}


	/*

					with obj_player2
					{
					if state =states.mach1 && !audio_is_playing(sfx_mach1) && grounded
					{
					mach1snd = audio_play_sound(sfx_mach1,1,false)
					}
					else if state !=states.mach1 or !grounded or move = -xscale
					audio_stop_sound(mach1snd)

					if  (sprite_index = spr_mach or state = states.climbwall) && !audio_is_playing(sfx_mach2)
					{
					mach2snd = audio_play_sound(sfx_mach2,1,false)

					}
					else 
					if  (sprite_index != spr_mach && state != states.climbwall) 
					audio_stop_sound(mach2snd)




					if (state =states.mach3 or sprite_index = spr_mach3boost) && sprite_index != spr_crazyrun && !audio_is_playing(sfx_mach3)
					{
					mach3snd = audio_play_sound(sfx_mach3,1,false)
					}
					else if (state !=states.mach3  && sprite_index != spr_mach3boost) or sprite_index = spr_crazyrun
					audio_stop_sound(mach3snd)

					if state =states.knightpepslopes  && !audio_is_playing(sfx_knightslide)
					{
					knightslide = audio_play_sound(sfx_knightslide,1,false)
					}
					else if state !=states.knightpepslopes && audio_is_playing(sfx_knightslide)
					audio_stop_sound(knightslide)

					if (sprite_index = spr_bombpeprun or sprite_index = spr_bombpeprunabouttoexplode)  && !audio_is_playing(sfx_bombpep1)
					{
					bombpep1snd =  audio_play_sound(sfx_bombpep1,1,false)
					}
					else if sprite_index != spr_bombpeprun && sprite_index != spr_bombpeprunabouttoexplode && audio_is_playing(sfx_bombpep1)
					audio_stop_sound(bombpep1snd)

					if sprite_index = spr_crazyrun && !audio_is_playing(sfx_mach4)
					{
					mach4snd = audio_play_sound(sfx_mach4,1,false)
					}
					else if sprite_index != spr_crazyrun
					audio_stop_sound(mach4snd)




					if state !=states.Sjumpprep && superjumpprepsnd
					{
					audio_stop_sound(superjumpprepsnd)
					}

					if state !=states.Sjumpprep && audio_is_playing(superjumpholdsnd) 
					{
					audio_stop_sound(superjumpholdsnd)
					}

					if sprite_index = spr_tumblestart && !audio_is_playing(sfx_tumble1) && floor(image_index) < 11
					tumble1snd =audio_play_sound(sfx_tumble1,1,false)

					if sprite_index = spr_tumblestart  && floor(image_index) = 11 && !audio_is_playing(sfx_tumble2)
					{
					tumble2snd =audio_play_sound(sfx_tumble2,1,false)
						audio_stop_sound(tumble1snd)
					}

					if (sprite_index = spr_tumble or  sprite_index = spr_machroll) && !audio_is_playing(sfx_tumble3) 
					tumble3snd = audio_play_sound(sfx_tumble3,1,false)

					if state != states.tumble &&  (sprite_index != spr_machroll)
					{
						audio_stop_sound(tumble1snd)
						audio_stop_sound(tumble2snd)
						audio_stop_sound(tumble3snd)
					}

					if audio_is_playing(suplexdashsnd) && state != states.handstandjump
					audio_stop_sound(suplexdashsnd)
					}



	*/


}
