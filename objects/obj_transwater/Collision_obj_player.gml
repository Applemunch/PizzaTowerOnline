with other
{
	if state == states.cotton
	{
		if vsp > 0
			vsp *= 3;
		state = states.normal;
		
		scr_soundeffect(sfx_hitenemy);
		instance_create(x, y, obj_genericpoofeffect);
	}
}
