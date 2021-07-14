function scr_enemy_charge() {
	if object_index = obj_peasanto 
	{
		if grounded
			hsp = image_xscale * (movespeed + (global.baddiespeed - 1))
		else
			hsp = 0
		
		image_speed = 0.35
		
		if scr_solid(x + image_xscale, y) && !place_meeting(x + image_xscale, y, obj_slope)
			image_xscale *= -1
		
		if !(scr_solid(x + (16 * image_xscale), y + 1)) && abs(hsp) > 0
			image_xscale *= -1
		
		if !((grounded or (grounded && !place_meeting(x,y,obj_platform)))) && hsp < 0
			hsp += 0.1
		else if !( (grounded or (grounded && !place_meeting(x,y,obj_platform)))) && hsp > 0
			hsp -= 0.1

		sprite_index = spr_peasanto_attack
	}
	
	if object_index == obj_indiancheese
	{
	    if floor(image_index) == image_number - 1
	        image_speed = 0
		
	    hsp = image_xscale * movespeed
	    if grounded && vsp > 0
	    {
	        if place_meeting(x + image_xscale, y, obj_solid)
	            image_xscale *= -1;
			
	        state = states.walk;
	        image_index = 0;
	        image_speed = 0.35;
	        sprite_index = spr_indiancheese_land;
	    }
	}
	
	//Pizzice
	if object_index = obj_pizzice
	{
		hsp = image_xscale * (movespeed + (global.baddiespeed - 1))
		image_speed = 0.35

		if ((scr_solid(x+1,y) && image_xscale = 1) or (scr_solid(x-1,y)&& image_xscale = -1)) && !place_meeting(x+sign(hsp),y,obj_slope) 
			image_xscale *= -1

		sprite_index = spr_pizzice_walk
	}
	
	//Fencer
	if object_index = obj_fencer or object_index = obj_banditochicken
	{
		if (grounded or (grounded && !place_meeting(x,y,obj_platform)))
			hsp = image_xscale * (movespeed + (global.baddiespeed - 1))
		else
			hsp = 0
		
		if ((scr_solid(x+1,y) && image_xscale = 1) or (scr_solid(x-1,y)&& image_xscale = -1)) && !place_meeting(x+sign(hsp),y,obj_slope)
			image_xscale *= -1
	}

	if object_index = obj_ancho
	{
		if sprite_index != spr_chargestart
			hsp = image_xscale * (movespeed + (global.baddiespeed - 1))
		else
			hsp = 0
		
		if scr_solid(x+hsp,y)
		{ 
			state = states.stun
			stunned = 100
		}
	}
	
	if object_index = obj_ninja
	{
		hsp = image_xscale * ((movespeed * 2) + (global.baddiespeed - 1))
		image_speed = 0.35
		
		if (scr_solid(x+image_xscale,y)) && !place_meeting(x+sign(hsp),y,obj_slope) 
			image_xscale *= -1

		if !( (grounded or (grounded && !place_meeting(x,y,obj_platform)))) && hsp < 0
			hsp += 0.1
		else if !( (grounded or (grounded && !place_meeting(x,y,obj_platform)))) && hsp > 0
			hsp -= 0.1

		sprite_index = spr_ninja_attack

		if grounded && vsp >= 0
		{
			state = states.walk
			sprite_index = walkspr
		}
	}
}
