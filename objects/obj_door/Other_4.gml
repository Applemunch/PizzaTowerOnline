if place_meeting(x, y, obj_player1)
{
	visited = true
	if ds_list_find_index(global.saveroom, id) == -1
		ds_list_add(global.saveroom, id)
}

if (ds_list_find_index(global.saveroom, id) != -1 && sprite_index != spr_pepperdoor)
or global.gameplay == 0 or string_startswith(room_get_name(room), "hub_")
	visited = true;