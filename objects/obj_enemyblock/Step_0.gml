with obj_baddie
{
	if (place_meeting(x + hsp, y, other) or place_meeting(x, y + vsp, other))
	&& thrown
		instance_destroy(other);
}

with (obj_junk)
{
	if (place_meeting(x + hsp, y, other) or place_meeting(x, y + vsp, other))
	&& thrown
		instance_destroy(other);
}