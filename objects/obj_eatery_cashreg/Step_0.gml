mask_index = spr_eat_cashreg;
with obj_player1
{
	if !place_meeting(x, y, other) && place_meeting(x + hsp, y, other)
	{
		if hsp > 0
			other.depth = -10;
		else
			other.depth = 10;
	}
}

mask_index = spr_eat_cashreg_hitbox;