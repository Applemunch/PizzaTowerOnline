function scr_player_barrel()
{
	image_speed = 0.35;
	move = key_right + key_left
	
	//Float
	if place_meeting(x,y,obj_water) && sprite_index != spr_player_barrelfloat
		sprite_index = spr_player_barrelfloat

	//Go foward while rolling
	if sprite_index != spr_player_barrelmove && sprite_index != spr_player_barrelidle
		hsp = xscale * movespeed

	//Trip and roll
	if sprite_index = spr_player_barrelslipnslide && floor(image_index) = image_number - 1
	{
		sprite_index = spr_barrelroll 
		movespeed = 12
	}

	//Destroy barrel
	if scr_solidwall(x+hsp,y) && sprite_index == spr_barrelroll
	&& !place_meeting(x+hsp,y,obj_barrelblock) && !place_meeting(x+hsp,y,obj_destructibles)
	{
		if !scr_slope()
		{
			image_index = 0;
			state = states.bump
			hsp = -xscale * 5
			vsp = -7
			
			repeat 4
				instance_create(x, y, obj_wooddebris)
			scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
			
			mask_index = spr_player_mask;
			while scr_solid(x, y)
				y++;
		}
		else
		{
			vsp = -10
		    xscale *= -1
		    movespeed = 0
		    jumpstop = 1
		}
	}

	// land
	if (grounded && (vsp > 0))
	    movespeed = 12
	
	// jump
	if key_jump
	    input_buffer_jump = 0
	if ((!key_jump2) && ((jumpstop == 0) && ((vsp < 0.5) && (stompAnim == 0))))
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (grounded && (vsp > 0))
	    jumpstop = 0
	if ((input_buffer_jump < 8) && (grounded && (hsp != 0)))
	{
		input_buffer_jump = 8
	    vsp = -11
		
		with instance_create(x, y, obj_highjumpcloud2)
			image_xscale = other.image_xscale;
	}
	
	//Fall
	if !grounded && (sprite_index = spr_player_barrelmove or sprite_index = spr_player_barrelidle)
		sprite_index = spr_player_barrelfall
	
	//Land
	if grounded && sprite_index = spr_player_barrelfall
	{
		image_index = 0
		sprite_index = spr_player_barrelcrouch
	}
	
	//Go back to barrel normal
	if floor(image_index) = image_number -1 && sprite_index = spr_player_barrelcrouch
		sprite_index = spr_player_barrelidle

	//Movespeed

	if sprite_index = spr_player_barrelmove
	or sprite_index = spr_player_barrelidle or sprite_index = spr_player_barrelfloat
	or sprite_index = spr_player_barrelfall
	{
		hsp = movespeed * move


		if move != 0
		{
			xscale = move
			sprite_index = spr_player_barrelmove
		}
		else if sprite_index = spr_player_barrelmove
			sprite_index = spr_player_barrelidle

		if move != 0 
		{
		if movespeed < 6
		{
		movespeed += 0.5
		}
		else if floor(movespeed)= 6
		{
		movespeed = 6
		}
		}
		else
		movespeed = 0

		if movespeed > 6
		movespeed -= 0.1
	}


}
