function scr_enemy_walk() {
	if object_index != obj_pickle && object_index != obj_tankOLD && movespeed != 0
	    hsp = image_xscale * (movespeed + (global.baddiespeed - 1));
	else if object_index == obj_pickle
	{
		if !walked
		{
			hsp += accel * sign(image_xscale)
			if hsp < -movespeed or hsp > movespeed
			{
			    hsp = movespeed * sign(image_xscale)
			    walked = true;
			}
		}
		else
		{
			hsp -= deccel * sign(image_xscale)
			if hsp > -deccel_threshold && hsp < deccel_threshold
			    walked = false;
		}
	}
	else if object_index == obj_tankOLD
	{
	    if slide_buffer <= 0
	        hsp = image_xscale * movespeed;
	}
	else
		hsp = 0;
	
	//Animation
	image_speed = 0.35

	if (scr_solid(x+image_xscale,y) or place_meeting(x+hsp,y,obj_hallway))
	if !place_meeting(x+sign(hsp),y,obj_slope)
	{
		if object_index == obj_forknight
		{
			image_xscale *= -1
			image_index = 0
			sprite_index = turnspr
			state = states.idle
		}
		else if object_index = obj_indiancheese && global.gameplay != 0
		{
			image_xscale *= -1
			image_index = 0
			sprite_index = spr_indiancheese_turn
			state = states.idle
		}
		else if object_index = obj_tankOLD
		{
			image_xscale *= -1
			image_index = 0
			sprite_index = turnspr 
			state = states.turn
		}
		else
		{
			image_xscale *= -1
			if object_index == obj_pickle
				hsp = 0;
		}
	}

	if object_index != obj_ancho
	{
		if !(scr_solid(x+(image_xscale*15),y+31) or place_meeting(x+(image_xscale*15),y+31,obj_platform) or place_meeting(x+(image_xscale*15),y+1,par_platform))
		if movespeed > 0 && grounded
		{
			if object_index = obj_ninja
			{
				vsp = -11
			
				image_index = 0
				image_xscale = -sign(x - obj_player.x)
				state = states.charge
			}
			else if object_index = obj_forknight
			{
				image_xscale *= -1
				image_index = 0
				sprite_index = turnspr
				state = states.idle
			}
			else if object_index = obj_tankOLD
			{
				image_xscale *= -1
				image_index = 0
				sprite_index = turnspr 
				state = states.turn
			}
			else
			{
				image_xscale *= -1
				if object_index == obj_pickle
					hsp = 0;
			}
		}
	}
}