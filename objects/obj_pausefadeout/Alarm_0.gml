with obj_hiddenobject
{
	if !activated
	{
		for (var i = 0; i < ds_list_size(deactivatedlist); i++)
			instance_deactivate_object(deactivatedlist[| i]);
	}
}