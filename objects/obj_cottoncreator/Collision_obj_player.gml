with other
{
	if state != states.cotton
	{
		state = states.cotton;
		sprite_index = spr_cotton_idle;
		
		scr_soundeffect(sfx_shotgunblast);
		instance_create(x, y, obj_genericpoofeffect);
	}
}
