if sprite_index = spr_boxcrusher_fall
{
	other.image_index = 0
	other.state = states.bump
	other.x = x
	other.y = y
}

if sprite_index = spr_boxcrusher_land
{
	tv_push_prompt_once(tv_create_prompt("This is the boxxed transformation text", 2, spr_tv_boxxedpep, 3), "boxxedpep");
	
	other.state = states.boxxedpep
	if other.sprite_index != spr_boxxedpep_intro
	{
		other.sprite_index = spr_boxxedpep_intro
		scr_soundeffect(sfx_pephurt)
	}
	other.image_index = 0
	other.hsp = 0
	other.vsp = 0
	other.x = x
	other.y = y-20
}