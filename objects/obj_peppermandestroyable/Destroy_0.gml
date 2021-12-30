if ds_list_find_index(global.saveroom, id) = -1
{
	repeat 4 with instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_debris)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		
		sprite_index = spr_secretdebris;
		image_blend = $0030E0;
	}

	scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
	ds_list_add(global.saveroom, id) 
	
	var lay_id = get_layer("Tiles_1");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, x, y);
	data = tile_set_empty(data)
	tilemap_set_at_pixel(map_id, data, x, y);
}

