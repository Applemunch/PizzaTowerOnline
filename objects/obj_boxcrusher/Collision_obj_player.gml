if other.state != states.boxxedpep
{
	if sprite_index == spr_boxcrusher_fall && other.character != "V"
	{
		with other
		{
			image_index = 0;
			state = states.bump;
			
			if !scr_solid(other.x, other.y)
			{
				x = other.x;
				y = other.y;
			}
		}
	}

	if sprite_index == spr_boxcrusher_land
	{
		if other.character == "V"
			scr_hurtplayer(other);
		else
		{
			tv_push_prompt_once(tv_create_prompt("This is the boxxed transformation text", 2, spr_tv_boxxedpep, 3), "boxxedpep");
		
			with other
			{
				scr_knightbump(true, false);
				state = states.boxxedpep
			
				sprite_index = spr_boxxed_intro
				scr_soundeffect(sfx_pephurt)
				
				image_index = 0
				hsp = 0
				vsp = 0
				x = x
				y = y - 20
			}
		}
	}
}