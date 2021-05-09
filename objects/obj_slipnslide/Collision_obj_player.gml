if (drop == false && !instance_exists(obj_pepperman)) or global.gameplay != 0
{
	with other
	{
		var b = 1;
		for (i = 0; i <  array_length_1d(transformation)-1; i+=1)
			if state = transformation[i] && state != states.barrel
				b = 0;

		if b == 1
		{
			if global.gameplay == 0
			{
				if state = states.barrel
				{
					movespeed = 4
					sprite_index = spr_player_barrelslipnslide
					image_index = 0
				
					other.drop = true
					other.vsp = -5
				}
				else if state != states.slipnslide
				{
					sprite_index = spr_slipnslide
					other.drop = true
					other.vsp = -5
					state = states.slipnslide
					if movespeed < 12
					movespeed = 12
				}
			}
			else
			{
				sprite_index = spr_slipbanan1;
			    other.drop = 1;
			    vsp = -11;
			    image_index = 0;
			    state = states.slipbanan;
			    if movespeed < 8
			        movespeed = 8;
			    instance_destroy(other);
			}
		}
	}
}