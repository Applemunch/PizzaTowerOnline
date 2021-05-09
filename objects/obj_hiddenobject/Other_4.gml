if ds_list_find_index(global.saveroom, id) == -1
{
	var objectlist = ds_list_create();
	var num = instance_place_list(x, y, object, objectlist, false);
	
	for(var i = 0; i < num; i++)
	{
		var obj = objectlist[| i];
		ds_list_add(deactivatedlist, obj.id);
		instance_deactivate_object(obj);
	}
}
else
	instance_destroy();