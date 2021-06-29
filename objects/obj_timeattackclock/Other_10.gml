global.timeattack = !global.timeattack;
scr_soundeffect(sfx_punch);
	
if global.timeattack
{
	with obj_timeattack
		alarm[1] = -1;
}