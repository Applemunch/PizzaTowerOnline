with other
{
	if state != states.Sjump
	{
	    if state = states.knightpep or state = states.knightpepattack or state = states.knightpepslopes
	    {
		    with instance_create(x,y,obj_knightdebris)
		    {
		    image_index = 0
		    }
		    with instance_create(x,y,obj_knightdebris)
		    {
		    image_index = 1
		    }
		    with instance_create(x,y,obj_knightdebris)
		    {
		    image_index = 2
		    }
		    with instance_create(x,y,obj_knightdebris)
		    {
		    image_index = 3
		    }
		    with instance_create(x,y,obj_knightdebris)
		    {
		    image_index = 4
		    }
		    with instance_create(x,y,obj_knightdebris)
		    {
		    image_index = 5
		    }
	    }
		
		if state = states.bombpep
			instance_create(x,y,obj_bombexplosion)

		scr_soundeffect(sfx_superjumprelease)
		sprite_index = spr_superjump
		state = states.Sjump
		vsp = -15
		other.image_index= 0
		other.image_speed= 0.35
		
		x = other.x + (other.sprite_width / 2)
		if scr_solid(x, y)
			x = xprevious;
		
		image_speed = 0.5
		image_index = 0
		
		springsjump = true;
	}
}

