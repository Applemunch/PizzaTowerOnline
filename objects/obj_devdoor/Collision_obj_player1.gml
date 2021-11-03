with other
{
	if key_up2 && grounded && state = states.normal && y == other.y + 50
	{
		scr_soundeffect(sfx_step);
		other.open = true;
	
		sprite_index = spr_idle;
		state = -1;
		hsp = 0;
		vsp = 0;
	}
}
