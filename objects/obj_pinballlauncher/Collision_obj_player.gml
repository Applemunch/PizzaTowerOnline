with other
{
	if (scr_transformationcheck() or state == states.tumble) && /*grounded && state != states.tumble && */state != states.knightpep && state != states.knightpepslopes && state != states.knightpepattack && state != states.gotoplayer && (state != states.bump or grounded)
	{
		//scr_soundeffect(sfx_oh, sfx_ohman,sfx_hurt1,sfx_hurt2,sfx_hurt3, sfx_mammamia)
		state = states.tumble
		xscale = sign(other.image_xscale)
		movespeed = 14
		sprite_index = spr_tumble
		other.image_index = 0
		other.sprite_index = spr_goblinbot_kick
		
		/*
		vsp = 0
		var yp = y;
		
        y = other.y - 45;
        if place_meeting(x, y, obj_platform)
            y--;
		
		// push out of block
		if scr_solid(x, y)
			y = yp;
		*/
	}
}