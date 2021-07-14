function scr_player_fireass() {
	image_speed = 0.35

	if sprite_index = spr_fireass or sprite_index == spr_scaredjump1 or sprite_index == spr_scaredjump2
	{
		if floor(image_index) = image_number -1 && sprite_index == spr_fireass
		{
			with instance_create(x, y+25,obj_balloonpop)
				sprite_index= spr_shotgunimpact
		}
		move = key_left + key_right;
	
		if move != 0
			xscale = move
	
		hsp = move * movespeed
		movespeed = 4
		if place_meeting(x,y+1,obj_haystack)
			vsp = -20
		else if grounded && vsp > 0 
		{
			instance_create(x, y, obj_landcloud)
			
			movespeed = 6
			if sprite_index == spr_fireass
				sprite_index = spr_fireassground
			else
			{
				scr_soundeffect(sfx_step)
				
				if (sprite_index == spr_scaredjump1 or sprite_index == spr_scaredjump2)
				&& global.gameplay == 0 && character == "P"
				{
					image_index = 0;
					sprite_index = spr_scaredjump3;
					movespeed = 0;
					hsp = 0;
				}
				else
				{
					if !key_attack
						landAnim = true;
					else
						sprite_index = spr_idle;
					
					movespeed = 0
					landAnim = false
					alarm[5] = 2
					alarm[7] = 60
					hurted = true
					state = states.normal
					image_index = 0
				}
			}
			image_index = 0
		}
	}

	if floor(image_index) == image_number - 1 && sprite_index == spr_scaredjump1
	    sprite_index = spr_scaredjump2

	if sprite_index = spr_fireassground
	{
		hsp = xscale * movespeed
		if movespeed > 0
			movespeed -= 0.25
	
		if floor(image_index) = image_number-1
		{
			movespeed =0
			landAnim = false
			alarm[5] = 2
			alarm[7] = 60
			hurted = true
			state = states.normal
			sprite_index = spr_idle
			image_index = 0
		}
	//	if floor(image_index) = image_number-1 or place_meeting(x+xscale,y,obj_solid)
	//	{
	//		scr_soundeffect(sfx_fireassend)
	//	sprite_index = spr_fireassend
	//	hsp = 0
	//	image_index = 0
	//	}
	}

	if sprite_index = spr_fireassend or sprite_index == spr_scaredjump3
	{
		if floor(image_index) = image_number-1
		{
			movespeed =0
			landAnim = false
			alarm[5] = 2
			alarm[7] = 60
			hurted = true
			state = states.normal
			sprite_index = spr_idle
			image_index = 0
		}
	
	}




}
