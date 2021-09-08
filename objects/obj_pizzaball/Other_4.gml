if ds_list_find_index(global.baddieroom, id) != -1  
{
	with obj_camera
	{
		targetoverride = noone;
		targetgoingback = false;
	}
}