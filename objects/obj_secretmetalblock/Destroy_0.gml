if ds_list_find_index(global.saveroom, id) == -1
{
    with (obj_camera) {
	
	    shake_mag=20;
	    shake_mag_acc=40/room_speed;
	}

	scr_soundeffect(sfx_breakmetal)
	ds_list_add(global.saveroom, id) 
	
	// delete tiles AND generate debris
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
			
			if data_ != 0
			{
				with instance_create(x + 32, y + 32,obj_secretdebris)
				{
					tile_dataid = data_
					tile_dataset = tilemap_get_tileset(map_id)
					sprite_index = spr_secretmetaldebris
				}
			}
			else if data_ == -1
				instance_create(x + 32, y + 32, obj_metaldebris)
		
			if data2_ != 0
			{
				with instance_create(x + 32, y + 32,obj_secretdebris)
				{
					tile_dataid = data2_
					tile_dataset = tilemap_get_tileset(map_id)
					sprite_index = spr_secretmetaldebris
				}
			}
			else if data2_ == -1
				instance_create(x + 32, y + 32, obj_metaldebris)
	
			if data3_ != 0
			{
				with instance_create(x + 32, y + 32,obj_secretdebris)
				{
					tile_dataid = data3_
					tile_dataset = tilemap_get_tileset(map_id)
					sprite_index = spr_secretmetaldebris
				}
			}
			else if data3_ == -1
				instance_create(x + 32, y + 32, obj_metaldebris)
	
			if data4_ != 0
			{
				with instance_create(x + 32, y + 32,obj_secretdebris)
				{
					tile_dataid = data4_
					tile_dataset = tilemap_get_tileset(map_id)
					sprite_index = spr_secretmetaldebris
				}
			}
			else if data4_ == -1
				instance_create(x + 32, y + 32, obj_metaldebris)
		}
		
		map_id = layer_tilemap_get_id(get_layer("Tiles_2"));
	}
}
