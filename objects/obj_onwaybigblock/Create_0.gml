if room == rm_editor exit;

depth = 1
var offset = 0;
if image_xscale < 0
	offset = sprite_width / 2;
with instance_create(x + offset, y, obj_solid)
	image_yscale = 2;