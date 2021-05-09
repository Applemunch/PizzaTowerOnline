if ds_list_find_index(global.saveroom, id) != -1  
	instance_destroy()
else if global.gameplay == 0
{
	instance_create(x, y, obj_destructiblerockblock);
	instance_destroy(id, false);
}