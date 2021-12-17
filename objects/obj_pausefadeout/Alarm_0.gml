// escape collectibles
if !global.panic
	instance_deactivate_object(obj_collectescape);

// arena rounds
with obj_arenaspawn
{
	if state == 115 or state == 116
	{
		if !ds_list_empty(baddielist)
		{
		    for (i = 0; i < ds_list_size(baddielist); i++)
		    {
		        var b = ds_list_find_value(baddielist, i);
		        if b[0] != wave && instance_exists(b[1])
		            instance_deactivate_object(b[1]);
		    }
		}
	}
	else if !ds_list_empty(baddielist)
	{
		for (i = 0; i < ds_list_size(baddielist); i++)
		{
		    b = ds_list_find_value(baddielist, i)[1];
		    if instance_exists(b)
		        instance_deactivate_object(b);
		}
	}
}

// hidden object
with obj_hiddenobject
{
	if !activated
	{
		for (var i = 0; i < ds_list_size(deactivatedlist); i++)
			instance_deactivate_object(deactivatedlist[| i]);
	}
}
