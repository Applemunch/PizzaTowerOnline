if room == rm_editor exit;

if irandom_range(1, 10000) == 5
	sprite_index = spr_wariopill
else
	sprite_index = scr_collectsprite();

image_speed = 0.35

global.collected = false
global.collectsound = 0

depth = 11;
if place_meeting(x, y, obj_secretblock) or place_meeting(x, y, obj_secretbigblock) or place_meeting(x, y, obj_secretmetalblock)
	depth = 104;
ID = -1;