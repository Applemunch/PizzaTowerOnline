function create_collect(x, y, sprite)
{
	if global.gameplay == 0
		exit;
	
	with instance_create(x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]), obj_collectparticle)
		sprite_index = sprite;
}

function create_baddiegibsticks(x, y) {
	if global.gameplay == 0
		exit;
	
	instance_create(x, y, obj_baddiegibsstick);
}