with other
{
	if state == states.cotton
	{
		alarm[5] = 3
		alarm[7] = 60
		
		state = states.normal;
		
		scr_soundeffect(sfx_hitenemy);
		instance_create(x, y, obj_genericpoofeffect);
	}
}
