hsp = image_xscale * 5


if scr_solid(x+hsp, y)
	instance_destroy()

if place_meeting(x+1,y,obj_bombblock) or place_meeting(x-1,y,obj_bombblock) or place_meeting(x,y-1,obj_bombblock) or place_meeting(x,y+1,obj_bombblock)
	instance_destroy()

scr_collide()
grounded = false