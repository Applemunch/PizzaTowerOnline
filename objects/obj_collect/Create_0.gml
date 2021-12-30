if room == rm_editor exit;

sprite_index = scr_collectsprite();
image_speed = 0.35;

depth = 11;
if place_meeting(x, y, obj_secretblock) or place_meeting(x, y, obj_secretbigblock) or place_meeting(x, y, obj_secretmetalblock)
	depth = 104;
ID = -1;
