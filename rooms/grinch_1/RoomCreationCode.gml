global.panic = true;
global.minutes = 4;
global.seconds = 59;
global.wave = 0;
global.maxwave = (global.minutes * 60 + global.seconds) * 60;

with obj_camera
	alarm[1] = 60;

sprite_prefetch(spr_grinch_grinch2);
