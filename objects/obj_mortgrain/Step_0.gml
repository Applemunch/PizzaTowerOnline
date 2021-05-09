with obj_player1
{
	if place_meeting(x - 1, y, other) or place_meeting(x + 1, y, other)
	&& state == states.mort && !other.eaten
	{
		other.eaten = true
		other.x = -100
		other.y = -100
		other.sprite_index = spr_corneaten
		grav = 0.5
		state = states.normal
	}
}

if instance_exists(obj_mort) && eaten
{
	x = xstart
	y = ystart
	eaten = false
	sprite_index = spr_corn
}