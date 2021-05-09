if ds_list_find_index(global.saveroom, id) = -1
{
	if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
	{
		audio_stop_sound(sfx_breakblock1)
		audio_stop_sound(sfx_breakblock2) 
	}
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
	if save
		ds_list_add(global.saveroom, id) 

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
	
	repeat 4
	{
		if data2 != 0 && data2 != -1
		{
			with instance_create(x+ 16,y,obj_secretdebris)
			{
				sprite_index = spr_secretdebris
	            tile_dataid = data2
	            tile_dataset = tilemap_get_tileset(map_id2)
			}
		}
		else if data != 0 && data != -1
		{
			with instance_create(x+ 16,y,obj_secretdebris)
			{
				sprite_index = spr_secretdebris
	            tile_dataid = data
	            tile_dataset = tilemap_get_tileset(map_id)
			}
		}
		else
			instance_create(x+ 16,y,obj_debris);
	}
}

