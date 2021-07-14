if (ds_list_find_index(global.saveroom, id) != -1)
    instance_destroy()

with obj_player1
{
	if character == "V"
	{
		with other
			instance_change(obj_metalblock, false);
	}
}