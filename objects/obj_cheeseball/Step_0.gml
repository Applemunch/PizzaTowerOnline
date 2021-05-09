hsp = image_xscale * movespeed

if scr_solid(x + sign(hsp), y) && !place_meeting(x + hsp, y, obj_slope)
	instance_destroy()

scr_collide()