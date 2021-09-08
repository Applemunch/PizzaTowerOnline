if other.object_index != obj_hungrypillar or !pistol
{
	if other.object_index == obj_onwaybigblock
	{
		if (sign(image_xscale) != sign(-other.image_xscale)) or sprite_index == sprite10391
			exit;
	}
	if other.object_index == obj_hungrypillar
	{
		if abs(spdh) > 4
			exit;
	}
	instance_destroy(other)
}