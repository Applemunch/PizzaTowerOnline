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
		
		case obj_ancho:
			hsp = 0;
	        if sprite_index == spr_rage1
	            vsp = 0;
	        if sprite_index == spr_rage2
	            vsp = 10;
			
	        if floor(image_index) >= image_number - 1 && sprite_index == spr_rage1
	            sprite_index = spr_rage2;
			
	        if grounded && sprite_index == spr_rage2
	        {
				if instance_in_camera(id, view_camera[0])
					scr_soundeffect(sfx_groundpound);
				
	            with obj_camera
	            {
	                shake_mag = 10;
	                shake_mag_acc = 30 / room_speed;
	            }
				
	            image_index = 0
	            sprite_index = spr_rage3
	        }
			
	        if floor(image_index) >= image_number - 1 && sprite_index == spr_rage3
	        {
	            state = states.walk;
	            sprite_index = idlespr;
	        }
			break;
		
		case obj_spitcheese:
			ragedash--;
	        if ragedash <= 0
	        {
	            with instance_create(x, y, obj_bigspitcheesespike)
				{
		            other.ragedash = 50;
		            hsp = other.image_xscale * 5;
		            vsp = -7;
				}
	        }
	        if floor(image_index) >= image_number - 1
	        {
				image_speed = 0.35;
	            state = states.walk;
	            sprite_index = idlespr;
	        }
	        break
		
		case obj_indiancheese:
	        ragedash--
	        if ragedash <= 0
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
		
		case obj_minijohn:
			hsp = movespeed * image_xscale
	        if sprite_index == spr_minijohn_rage1 && floor(image_index) >= image_number - 1
	            sprite_index = spr_minijohn_rage2
			
	        if grounded && vsp > 0
	        {
	            var targetplayer = obj_player1;
	            movespeed = 4;
	            image_xscale = -sign(x - targetplayer.x);
	            state = states.chase;
	            sprite_index = spr_minijohn_charge;
	        }
			break;
		
		case obj_thug_red:
		case obj_thug_blue:
		case obj_thug_green:
			if !shot && floor(image_index) == 9
	        {
	            shot = true;
				
	            with instance_create(x + (8 * image_xscale), y, obj_robotknife)
				{
		            image_xscale = other.image_xscale;
		            hsp = other.image_xscale * 5;
				}
	        }
	        if floor(image_index) >= image_number - 1
	        {
	            ragecooldown = 100;
	            state = states.walk;
				sprite_index = idlespr
	        }
			break;
	}
	
	var railmeet = instance_place(x, y + 1, obj_railparent);
	if railmeet then hsp = movespeed * railmeet.spdh;
}