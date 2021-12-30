with other
{
	if state == states.tumble or state == states.knightpepslopes or state == states.mach3 or state == states.mach2 or state == states.machroll
	{
		if other.sprite_index == spr_spring
			other.image_speed = 0.35
		else
		{
			other.sprite_index = spr_sidespringblock_bounce;
			other.image_index = 0;
		}
		if xscale != other.image_xscale
			xscale = other.image_xscale
	}
}
