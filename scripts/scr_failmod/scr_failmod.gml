function scr_failmod(modif)
{
	if global.modifier == modif
	{
		if modif == mods.no_toppings
			global.toppings += 1;
		global.failedmod = true;
	}
}