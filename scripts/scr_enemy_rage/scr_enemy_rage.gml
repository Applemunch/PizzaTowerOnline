function scr_enemy_rage()
{
	switch object_index
	{
		case obj_indiancheese:
	        ragedash--
	        if ragedash == 0
	        {
	            ragecooldown = 200;
	            ragedash = 50;
	            state = states.walk;
	            sprite_index = walkspr;
	        }
	        if !shot && ragedash < 30
	        {
	            shot = true
	            with instance_create(x, y, obj_arcprojectile)
				{
		            image_xscale = other.image_xscale
		            hsp = image_xscale * 6
		            vsp = -8
				}
	        }
	        break;
	}
}