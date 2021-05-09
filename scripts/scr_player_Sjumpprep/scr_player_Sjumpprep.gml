function scr_player_Sjumpprep() {

	switch (character)
	{
		default:
		if character != "N" or (character == "N" && noisetype == 1)
		{
			combo = 0
			mach2 = 0
		
			if (sprite_index == spr_superjumppreplight || sprite_index == spr_superjumpright || sprite_index == spr_superjumpleft)
			or global.gameplay == 0
				move = key_left + key_right;
			else
				move = xscale;
			
			if global.gameplay == 0
			{
				if sprite_index = spr_superjumppreplight or sprite_index = spr_snick_superjumplight or sprite_index = spr_superjumpright or sprite_index = spr_superjumpleft
				{
					if !place_meeting(x,y+1, obj_railh)&& !place_meeting(x,y+1, obj_railh2)
						hsp = move * 2;
					else if place_meeting(x,y+1, obj_railh)
						hsp = move * 2 -5
					else if place_meeting(x,y+1, obj_railh2)
						hsp = move  * 2 +5
				}
			
				if sprite_index = spr_superjumpprep
				{
					if !place_meeting(x,y+1, obj_railh)&& !place_meeting(x,y+1, obj_railh2)
						hsp = xscale * movespeed;
					else if place_meeting(x,y+1, obj_railh)
						hsp = xscale * movespeed -5
					else if place_meeting(x,y+1, obj_railh2)
						hsp =xscale  * movespeed +5
			
					if movespeed >= 0
						movespeed -= 0.25
				}
			}
			else
			{
				if !place_meeting(x,y+1, obj_railh)&& !place_meeting(x,y+1, obj_railh2)
					hsp = move * movespeed;
				else if place_meeting(x,y+1, obj_railh)
					hsp = move * movespeed - 5;
				else if place_meeting(x,y+1, obj_railh2)
					hsp = move * movespeed + 5;
			
				if sprite_index == spr_superjumpprep && movespeed > 0
					movespeed -= 1;
			}
		
			if floor(image_index) = image_number-1 && sprite_index = spr_superjumpprep 
				sprite_index = spr_superjumppreplight
		
			if sprite_index == spr_superjumppreplight
	            movespeed = 1;

			if character = "S"
			{
				if floor(image_index) = image_number-1 && sprite_index = spr_snick_superjumpprep
					sprite_index = spr_snick_superjumplight
				if move != 0
					xscale = move
			}
			else
			{
				if sprite_index != spr_superjumpprep
				{
					if sign(hsp) == 0
					{
						sprite_index = spr_superjumppreplight
					}
					if  sign(hsp) == 1
					{
						if xscale = 1
							sprite_index = spr_superjumpright
						if xscale = -1
							sprite_index = spr_superjumpleft
					}
					if sign(hsp) == -1
					{
						if xscale = 1
							sprite_index = spr_superjumpleft
						if xscale = -1
							sprite_index = spr_superjumpright
					}
				}
			}
		
			if global.gameplay == 0
			{
				start_running = true
				alarm[4] = 14
			
				jumpAnim = true
				dashAnim = true
				landAnim = false
				machslideAnim = true
				moveAnim = true
				stopAnim = true
				crouchslideAnim = true
				crouchAnim = true
			}

			if !key_up && grounded && (character = "S" or (sprite_index = spr_superjumppreplight or sprite_index = spr_superjumpleft or sprite_index = spr_superjumpright)) && ((!scr_solid(x,y-16) && !scr_solid(x,y-32)) or place_meeting(x, y - 32, obj_destructibles))
			{
				scr_soundeffect(sfx_superjumprelease)
				instance_create(x,y,obj_explosioneffect)
				sprite_index = spr_superjump
				state = states.Sjump
				vsp = -17
				image_index = 0
			}
			//Animations

			image_speed = 0.35
		}

		if character == "N" && noisetype == 0
		{
			hsp = 0
			vsp = 0

			pogochargeactive = false
			pogocharge = 50

			if floor(image_index) = image_number-1
			{
				if sprite_index = spr_playerN_jetpackstart
				{
					if pizzapepper = 0
					{
			state =states.mach3
			sprite_index = spr_playerN_jetpackboost
			instance_create(x,y,obj_jumpdust)
			movespeed = 15
					}
			else
			{
				state =states.mach3
			sprite_index = spr_crazyrun
			instance_create(x,y,obj_jumpdust)
			movespeed = 21
			}
				}
			else if sprite_index = spr_superjumpprep
			{
			scr_soundeffect(sfx_superjumprelease)
			instance_create(x,y,obj_explosioneffect)
			sprite_index = spr_superjump
			state = states.Sjump
			vsp = -15
			}

			}

			if sprite_index = spr_playerN_jetpackstart
			image_speed = 0.5
			else
			image_speed = 0.3
		}

		break
	}
	if !audio_is_playing(superjumpholdsnd) && !audio_is_playing(sfx_superjumpprep)
		superjumpholdsnd = audio_play_sound(sfx_superjumphold,1,0)
}
