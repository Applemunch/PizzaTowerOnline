/// @description spawn pizza portals
for (i = 0; i < ds_list_size(baddielist); i++)
{
    var b = ds_list_find_value(baddielist, i);
    if b[0] == wave && instance_exists(b[1])
    {
		ds_list_add(currentarena, b[1].id);
		
        with instance_create(b[1].x, b[1].y, obj_arena_pizzaportal)
		{
	        stored_id = b[1];
	        alarm[0] = other.round_max;
		}
		
		boundbox = false;
        instance_deactivate_object(b[1])
    }
}