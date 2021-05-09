with other
{
	if image_xscale != other.image_xscale
		image_xscale = other.image_xscale
	
	if global.gameplay == 0
		other.image_speed = 0.35
	else
	{
		other.sprite_index = spr_sidespringblock_bounce;
		other.image_index = 0;
	}
}