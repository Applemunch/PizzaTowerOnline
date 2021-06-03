function scr_enemy_rage()
{
	switch object_index
	{
		case obj_cheeseslime:
			if floor(image_index) > 10
	        {
	            hsp = image_xscale * 8
	            with instance_create(x, y, obj_baddieragehitbox)
				{
		            ID = other.id
		            image_xscale = other.image_xscale
				}
	        }
	        else
	            hsp = 0
			
	        if floor(image_index) == image_number - 1
	        {
	            state = states.walk
	            sprite_index = walkspr
	        }
			break;
		
		case obj_forknight:
			image_speed = 0.6;
			
	        if sprite_index == spr_forknight_ragestart
			or sprite_index == spr_forknight_ragestart_re
	        {
	            hsp = 0
	            if image_index >= image_number - 1
	            {
	                sprite_index = spr_forknight_rageloop
					if global.snickrematch
						sprite_index = spr_forknight_rageloop_re
	                image_index = 0
	            }
	        }
	        else
	        {
	            hsp = image_xscale * (4 + (global.baddiespeed - 1));
	            with instance_place(x + hsp, y, obj_destructibles)
					instance_destroy();
	        }
			
			if ragedash > 0
				ragedash--;
			if ragedash <= 0
			{
				state = states.walk;
				sprite_index = walkspr;
				ragecooldown = 100;
			}
			break;
		
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
	
	var railmeet = instance_place(x, y + 1, obj_railparent);
	if railmeet then hsp = movespeed * railmeet.spdh;
}