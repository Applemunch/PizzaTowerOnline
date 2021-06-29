if other.state == states.handstandjump
{
	with other
		scr_pummel();
	
	event_user(0);
	
	if global.timeattack
		scr_soundeffect(sfx_killingblow);
}