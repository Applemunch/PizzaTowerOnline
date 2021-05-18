function scr_enemy_stun()
{
	//Animation
	if object_index == obj_ninja
		attack = true
	
	switch hp
	{
	    case -1:
	        grav = 1.1;
	        break;
	    case -2:
	        grav = 1.3;
	        break;
	}
	
	if grounded
	{
		if object_index == obj_peasanto && angry != 1
			stunned -= 4;
		
		if global.gameplay == 0
			stunned--;
		else
		{
			switch global.stylethreshold
			{
			    case 0:
			        stunned -= 1
			        break
			    case 1:
			        stunned -= 1.35
			        break
			    case 2:
			        stunned -= 1.65
			        break
			    case 3:
			        stunned -= 2
			}
		}
	}

	if stuntouchbuffer > 0
		stuntouchbuffer--
	
	if object_index != obj_tankOLD or sprite_index != spr_tank_hitwall
		sprite_index = stunfallspr
	else if floor(image_index) == image_number - 1 && sprite_index == spr_tank_hitwall && global.gameplay != 0
	{
	    state = states.walk
	    stunned = 0
	    sprite_index = spr_tank_walk
	}
	
	image_speed = 0.35
	
	if grounded && vsp > 0
	{ 
		if thrown == true && hp <= 0 && object_index != obj_pizzaballOLD
			instance_destroy()

		thrown = false
		grav = 0.5
		hsp = 0
	}
	
	var railmeet = instance_place(x, y + 1, obj_railparent);
	if railmeet then hsp = railmeet.spdh;
	
	if scr_solid(x-image_xscale,y) && !place_meeting(x-image_xscale,y,obj_destructibles)
	{
		with instance_create(x,y,obj_bulletimpact)
			image_xscale = -other.image_xscale

		if thrown == true && hp <= 0 && object_index != obj_pizzaballOLD
			instance_destroy()
		
		grav = 0.5
		image_xscale *= -1
		hsp = -image_xscale * 4
	}

	if floor(image_index) = image_number-1 && stunned <= 0 && (object_index != obj_peasanto or angry)
	{
		if object_index != obj_miniufo && object_index != obj_ancho && object_index != obj_pizzaboy
		{
			vsp = -4
			grav = 0.5
		}
		else
			vsp = 0
		
		image_index = 0
		
		sprite_index = walkspr
		state = states.walk
		
		if object_index == obj_banditochicken && !activated
			sprite_index = spr_banditochicken_sleep
	}
}