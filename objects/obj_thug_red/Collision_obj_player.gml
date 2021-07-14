var player = other.id;
if state == states.punch && image_index > 8 && image_index < 12
	scr_hurtplayer(player);
/*
else
{
	var baddie = id;
	with other
	{
		if instakillmove && baddie.state != states.grabbed && !baddie.thrown && !baddie.invincible
		{
			if state == states.mach3 && sprite_index != spr_mach3hit && ((character != "N" or (character == "N" && noisetype == 1)) && character != "S")
	        {
	            if !fightball
	                sprite_index = spr_mach3hit;
	            image_index = 0;
	        }
	        if state == states.mach2 && grounded
	        {
	            machpunchAnim = true;
	            image_index = 0;
	        }
			baddie.grabbedby = 1;
			
	        scr_soundeffect(sfx_punch);
	        if state == states.mach3
	            instance_destroy(baddie);
			else
				scr_hitthrow(baddie, noone);
			
			if !grounded && state != states.freefall && key_jump2
			{
				if state == states.mach2 or (state == states.mach3 && !fightball)
	                sprite_index = spr_mach2jump;
	            suplexmove = false;
	            vsp = -11;
			}
		}
	}
}
*/