var offset = 0;
if image_xscale < 0
	offset = sprite_width / 2;

mysolid = instance_create(x + offset, y, obj_solid)
mysolid.image_yscale = 2 * abs(image_yscale);
mysolid.image_xscale = abs(image_xscale);