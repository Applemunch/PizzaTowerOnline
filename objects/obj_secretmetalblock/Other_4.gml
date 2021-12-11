if ds_list_find_index(global.saveroom, id) != -1  
{
	// delete tiles
	var map_id = layer_tilemap_get_id(get_layer("Tiles_1"));
	repeat 2
	{
		if map_id != -1
		{
			var data_ = tilemap_get_at_pixel(map_id, x, y);
			var data2_ = tilemap_get_at_pixel(map_id, x + 33, y);
			var data3_ = tilemap_get_at_pixel(map_id, x, y + 33);
			var data4_ = tilemap_get_at_pixel(map_id, x + 33, y + 33);
		
			if data_ != -1
				tilemap_set_at_pixel(map_id, tile_set_empty(data_), x, y);
			if data2_ != -1
				tilemap_set_at_pixel(map_id, tile_set_empty(data2_), x + 33, y);
			if data3_ != -1
				tilemap_set_at_pixel(map_id, tile_set_empty(data3_), x, y + 33);
			if data4_ != -1
				tilemap_set_at_pixel(map_id, tile_set_empty(data4_), x + 33, y + 33);
		}
		map_id = layer_tilemap_get_id(get_layer("Tiles_2"));
	}
	
	// die
	instance_destroy(id, false);
}
