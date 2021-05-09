event_inherited();

if scr_solid(x+hsp,y) && thrown = true
instance_destroy()

if grounded  = true && thrown = true && vsp >0
instance_destroy()

if place_meeting(x, y, obj_shotgunbullet)
	instance_destroy();