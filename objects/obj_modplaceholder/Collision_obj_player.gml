if other.state == states.handstandjump
{
	with other
		scr_pummel();
	
	if global.modifier == mods.no_toppings
		global.modifier = -1;
	else
		global.modifier = mods.no_toppings;
}