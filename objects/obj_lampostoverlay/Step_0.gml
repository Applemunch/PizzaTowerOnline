if instance_exists(ID)
{
	x = ID.x;
	y = ID.y;
	image_xscale = ID.image_xscale;
	image_yscale = ID.image_yscale;
	
	if ID.image_index == 1
		image_index = 3;
	else
		image_index = 2;
}
else
	instance_destroy();