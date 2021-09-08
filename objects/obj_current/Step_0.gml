with instance_place(x, y - 1, obj_player1)
{
	scr_knightbump(true, false);
	
	state = states.slipnslide
    xscale = sign(other.image_xscale)
    movespeed = 16
	
	sprite_index = spr_Current
}

with obj_baddie
{
	if place_meeting(x, y + 1, other)
	{
		stunned = 200
		state = states.stun
		hsp = sign(other.image_xscale) * 16
	
		if !(instance_exists(obj_balloonpop)) && grounded
		with instance_create(x,y,obj_balloonpop)
		{
			image_xscale = other.image_xscale
			sprite_index = spr_watereffect
		}
	}
}

with obj_pizzacoin
{
	if place_meeting(x, y + 1, other)
		hsp = 16 * sign(other.image_xscale);
}