with other
{
	if other.sync
	{
		if !hurted && !instance_exists(obj_parryhitbox)
		{
			scr_hurtplayer_weak(id);
			if x != other.x
				xscale = -sign(x - other.x);
		}
	}
	else if !other.hurtplayer && character == "V"
	{
		if key_jump2
		{
			vsp = -20
			if state == states.normal or state == states.jump or hsp == 0 
			{
				sprite_index = spr_playerV_superjump
				state = states.jump
			}

			image_index = 0
			jumpAnim = true
			jumpstop = true
			other.hurtplayer = true
		}
	}
}
