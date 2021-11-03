function scr_failmod(modif)
{
	if global.modifier == modif
	{
		if modif == mods.no_toppings
			global.toppings += 1;
		global.failedmod = true;
		
		with obj_drpc_updater
			event_user(3);
	}
}