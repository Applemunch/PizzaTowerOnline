if object_index != obj_onwaybigblock
	instance_destroy()
else
{
	if image_xscale > 0 // right
	{
		if other.x > bbox_right
			instance_destroy();
	}
	else // left
	{
		if other.x < bbox_right
			instance_destroy();
	}
}