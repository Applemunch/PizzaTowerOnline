var find = ds_list_find_index(global.followerlist, id);
if find != -1
	ds_list_delete(global.followerlist, find);
