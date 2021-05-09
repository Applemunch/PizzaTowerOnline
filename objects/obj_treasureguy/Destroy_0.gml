if ds_list_find_index(global.baddieroom, id) == -1
{
    with instance_create(x, y, obj_treasureguybox)
    {
        vsp = -3;
        mask_index = other.mask_index;
		
		content_var = ds_map_create();
		if other.important == 0
		{
	        for (var i = 0; i < array_length_1d(other.content_arr); i++)
	            content_arr[i] = other.content_arr[i];
			
			count = other.count;
			ds_map_copy(content_var, other.content_var);
		}
		else
			content_arr = [];
		
        current_arr = 0;
        alarm[0] = 30;
		
		ds_map_destroy(other.content_var);
		
		if other.important != 0
			alarm[1] = room_speed * 5;
    }
}
event_inherited()