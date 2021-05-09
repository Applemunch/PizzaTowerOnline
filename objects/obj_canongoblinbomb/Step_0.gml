hsp = image_xscale * 5


if scr_solid(x+hsp, y)
{
	instance_create(x,y,obj_bombexplosion)
instance_destroy()	
}


if place_meeting(x+1,y,obj_bombblock) or place_meeting(x-1,y,obj_bombblock) or place_meeting(x,y-1,obj_bombblock) or place_meeting(x,y+1,obj_bombblock)
{
instance_create(x,y,obj_bombexplosion)
}


scr_collide()