event_inherited()
if thrown && (scr_solid(x + hsp, y) or grounded) && vsp >= 0
	instance_destroy();
if place_meeting(x, y, obj_shotgunbullet)
	instance_destroy();