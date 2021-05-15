if activated && fade != -1
{
	if fade < 1
	{
		for(var i = 0; i < ds_list_size(deactivatedlist); i++)
		{
			var obj = deactivatedlist[| i];
			if instance_exists(obj)
				obj.image_alpha = fade;
		}
		fade += 0.025;
		if fade == 1
		{
			ds_list_destroy(deactivatedlist);
            fade = -1;
		}
	}
}