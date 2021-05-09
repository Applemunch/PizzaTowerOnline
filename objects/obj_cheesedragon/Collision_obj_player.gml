if other.character == "S"
{
	if other.state == states.mach3 && sprite_index != spr_cheesedragon_hurt
		event_user(0);
}
else
{
	with other
	{
		hsp = -6
		state = states.bump
		xscale = 1
		sprite_index =spr_bump
		vsp = -4
	}
}