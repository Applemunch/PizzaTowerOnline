if global.timeattack
	msg = "LEVEL DISABLED IN TIME ATTACK MODE";
else if global.modifier == mods.no_toppings
	msg = "LEVEL DISABLED IN NO TOPPINGS CHALLENGE";
else
	instance_destroy();