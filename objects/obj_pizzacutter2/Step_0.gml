if !instance_exists(ID)
	ID = instance_place(x, y, obj_pizzacutter1);
if instance_exists(ID)
{
	x = ID.x;
	y = ID.y;
	image_angle = ID.image_angle;
}