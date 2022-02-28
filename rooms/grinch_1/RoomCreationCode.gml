global.panic = true;
global.minutes = 2;
global.seconds = 59;
if global.modifier == mods.no_toppings
	global.minutes = 4;
global.wave = 0;
global.maxwave = (global.minutes * 60 + global.seconds) * 60;

with obj_camera
	alarm[1] = 60;

sprite_prefetch(spr_grinch_grinch2);
