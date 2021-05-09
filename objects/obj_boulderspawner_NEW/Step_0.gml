if cooldown == 0 && !instance_exists(boulderID)
with instance_create(x,y,obj_boulder_NEW)
{
	image_xscale = other.image_xscale 
	other.boulderID = id
}
if cooldown > 0
	cooldown--;