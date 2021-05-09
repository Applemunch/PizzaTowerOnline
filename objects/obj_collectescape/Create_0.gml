if room == rm_editor exit;
if global.gameplay == 0
{
	instance_destroy();
	exit;
}

sprite_index = choose(spr_fishcollect, spr_bananacollect, spr_eggcollect, spr_shrimpcollect, spr_baconcollect);
image_speed = 0.35

global.collected = false
global.collectsound = 0

depth = 11;
if place_meeting(x, y, obj_secretblock) or place_meeting(x, y, obj_secretbigblock) or place_meeting(x, y, obj_secretmetalblock)
	depth = 104;
ID = -1;