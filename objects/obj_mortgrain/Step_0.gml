with obj_player1
{
	if (place_meeting(x - 1, y, other) or place_meeting(x + 1, y, other))
	&& (state == states.mort or global.mort) && !other.eaten
	{
		other.eaten = true;
		
		mort = false;
		global.mort = false;
		
		grav = 0.5;
		state = states.normal;
	}
}

if eaten
{
	x = -1000;
	y = -1000;
	sprite_index = spr_corneaten;
}

/*
if instance_exists(obj_mort) && eaten
{
	x = xstart
	y = ystart
	eaten = false
	sprite_index = spr_corn
}
*/