//Mach3
with other
{
	if state != states.gotoplayer && state != states.actor
	{
		var changecoord = true;
	    if place_meeting(x, y, obj_superspring) or global.gameplay == 0
	        changecoord = false;
	
		if (grounded && (state == states.mach1 or state = states.mach2 or (state == states.handstandjump && (-key_left or key_right) && character == "S")) && key_attack)
		or (global.gameplay != 0 && sprite_index != spr_dashpadmach && character != "V")
		{
			if other.image_xscale != 0
				xscale = sign(other.image_xscale)
			
			machhitAnim = false
			state = states.mach3
			image_index = 0;
			
			if character != "S" && character != "V"
				sprite_index = spr_dashpadmach
			else
				sprite_index = spr_mach4
		
			instance_create(x, y, obj_jumpdust)
		
			if movespeed < 14
				movespeed = 14
		
			if global.gameplay == 0
				flash = true
		}

		if grounded && state == states.mach3 && key_attack && global.gameplay == 0
		{
			flash = true
			if movespeed < 14
				movespeed = 14
			instance_create(x,y,obj_jumpdust)
		}

		if grounded && state == states.pogo && key_attack
		{
			if other.image_xscale != 0
				xscale = sign(other.image_xscale)
			flash = true
		
			scr_soundeffect(sfx_noisewoah)
			state = states.Sjumpprep
			image_index = 0
			sprite_index = spr_playerN_jetpackstart
			hsp = 0
			vsp = 0
			instance_create(x, y, obj_jumpdust)
		}
	
		if changecoord
			y = other.y - 14;
	}
}

