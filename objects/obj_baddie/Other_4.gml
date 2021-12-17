if ds_list_find_index(global.baddieroom, id) != -1
	instance_destroy();
else
	event_user(0);

// snap to ground
if room != custom_lvl_room
{
	var j = 0;
	for(i = y; i < room_height; i++)
	{
		j += 1;
		if j >= 64
			break;
		if scr_solid(x, i + 1)
		{
			y = i;
			break;
		}
	}
}
