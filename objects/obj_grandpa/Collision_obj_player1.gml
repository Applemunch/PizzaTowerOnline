if other.state == states.knightpep or other.state == states.knightpepslopes
	instance_destroy();
else
{
	if !scr_hurtplayer(other) && !other.flash
	{
		with other
		{
			hsp = 6 * other.image_xscale
			xscale = -other.image_xscale
			sprite_index = spr_bump
			
			if state != states.bump
				vsp = -4
			state = states.bump
		}
	}
	
	if sprite_index != spr_grandpa_punch
	{
		image_index = 0;
		sprite_index = spr_grandpa_punch;
	}
}