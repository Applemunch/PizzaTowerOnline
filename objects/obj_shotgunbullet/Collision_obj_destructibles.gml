if sync == false
{
	if other.object_index == obj_onwaybigblock
	{
		if (sign(image_xscale) != sign(-other.image_xscale)) or sprite_index == sprite10391
			exit;
	}
	instance_destroy(other)
}