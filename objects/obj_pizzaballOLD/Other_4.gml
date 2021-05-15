if ds_list_find_index(global.saveroom, id) != -1  
{
	if global.panic
		instance_destroy(id, false);
	else
	{
		with obj_camera
		{
			targetoverride = noone
			targetgoingback = false
		}
	}
}