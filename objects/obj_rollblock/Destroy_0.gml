if room == custom_lvl_room {
	tile_layer_delete_at(1, x, y);
}

if ds_list_find_index(global.saveroom, id) = -1
{
	instance_create(x + 16, y, obj_debris)
	instance_create(x + 16, y, obj_debris)
	instance_create(x + 16, y, obj_debris)
	instance_create(x + 16, y, obj_debris)
	
	var lay_id = get_layer("Tiles_1");
	if lay_id == -1
	{
		map_id = -1;
		data = -1;
	}
	else
	{
		var map_id = layer_tilemap_get_id(lay_id);
		var data = tilemap_get_at_pixel(map_id, x, y);
		if data != -1
			tilemap_set_at_pixel(map_id, tile_set_empty(data), x, y);
	}
	
	lay_id = get_layer("Tiles_2");
	if lay_id == -1
	{
		map_id2 = -1;
		data2 = -1;
	}
	else
	{
		var map_id2 = layer_tilemap_get_id(lay_id);
		var data2 = tilemap_get_at_pixel(map_id2, x, y);
		if data2 != -1
			tilemap_set_at_pixel(map_id2, tile_set_empty(data2), x, y);
	}
	
	if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
	{
		audio_stop_sound(sfx_breakblock1)
		audio_stop_sound(sfx_breakblock2) 
	}
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
	
	ds_list_add(global.saveroom, id) 
}

