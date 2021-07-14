function scr_player_boxxedpep()
{
	image_speed = 0.35;
	mask_index = spr_crouchmask
	key_particles = false

	//Input buffer jumping
	if key_jump
	{
		input_buffer_jump = 0
	}

	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false
	{
		vsp /= 10
		jumpstop = true
	}
	
	if grounded && vsp > 0
		jumpstop = false

	//Turn
	if dir != xscale 
	{
		dir = xscale
		movespeed = 2
	}

	if sprite_index != spr_boxxed_intro
	{
		move = key_left + key_right;
		
		var railh = 0, railmeet = instance_place(x, y + 1, obj_railparent);
		if railmeet then railh = railmeet.spdh;
		hsp = move * movespeed + railh;
	}

	if scr_solid(x+sign(hsp),y) && xscale == xscale && !place_meeting(x+xscale,y,obj_slope)
		movespeed = 0

	//Input jumping
	if (grounded && (input_buffer_jump < 8) && vsp > 0 ) && !(scr_solid(x,y-16)) && !(scr_solid(x,y-32))
	{
		scr_soundeffect(sfx_jump)
		instance_create(x,y,obj_highjumpcloud2)
		vsp = -11
		sprite_index = spr_boxxed_jump;
		image_index = 0;
	}
	
	if move != 0 
	{
		if movespeed < 8
		{
			movespeed += 0.5
		}
		else if floor(movespeed)= 8
		{
			movespeed = 8
		}
	}
	else
		movespeed = 0

	if movespeed > 8
		movespeed -= 0.1
	
	//Land
	if grounded && (sprite_index == spr_boxxed_jump or sprite_index == spr_boxxed_air)
	{
		scr_soundeffect(sfx_step)
		instance_create(x, y, obj_landcloud)
	}
	
	//Sprites
	if sprite_index = spr_boxxed_intro && floor(image_index) = image_number -1
		sprite_index = spr_boxxed_idle

	if sprite_index != spr_boxxed_intro
	{
		if move != 0
			xscale = move

		if grounded && vsp >= 0 
		{
			if move != 0
				sprite_index = spr_boxxed_walk
			else
				sprite_index = spr_boxxed_idle
		}
		else if sprite_index != spr_boxxed_jump or floor(image_index) == image_number - 1
			sprite_index = spr_boxxed_air
	}
	
	//Effects
	if !(instance_exists(obj_cloudeffect)) && grounded && move != 0 && (floor(image_index) = 4 or floor(image_index) = 10)
	{
		instance_create(x,y+43,obj_cloudeffect)
	}

	if !(instance_exists(obj_cloudeffect)) && grounded && move != 0 && (sprite_index = spr_player_downslopes or sprite_index = spr_player_upslopes)
	{
		instance_create(x,y+43,obj_cloudeffect)
	}
	if move != 0 && (floor(image_index) = 3 or floor(image_index) = 8) && steppy = false
	{
		//scr_sound(sound_step)
		steppy = true
	}

	if move != 0 && floor(image_index) != 3 && floor(image_index) != 8
		steppy = false
}
