if other.state == states.handstandjump
{
	with other
		scr_pummel();
	
	global.timeattack = !global.timeattack;
	scr_soundeffect(sfx_punch);
	
	if global.timeattack
	{
		scr_soundeffect(sfx_killingblow);
		with obj_timeattack
			alarm[1] = -1;
	}
}