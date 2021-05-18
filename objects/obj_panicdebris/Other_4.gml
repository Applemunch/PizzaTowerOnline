// panic
if global.panic && global.panicnightmare
{
	// panic backgrounds
	/*
	var lay_id = layer_get_id("Backgrounds_1");
	var bg1 = layer_background_get_id(lay_id);
	
	lay_id = layer_get_id("Backgrounds_2");
	var bg2 = layer_background_get_id(lay_id);
	
	lay_id = layer_get_id("Backgrounds_3");
	var bg3 = layer_background_get_id(lay_id);
	
	if layer_background_get_sprite(bg1) = bg_desert
		layer_background_sprite(bg1, bg_desertescape);
	
	if layer_background_get_sprite(bg1) = bg_castle3
		layer_background_sprite(bg1, bg_castle3escape);

	if layer_background_get_sprite(bg1) = bg_castle4
		layer_background_sprite(bg1, bg_castle4escape);

	if layer_background_get_sprite(bg3) = bg_castle1
		layer_background_sprite(bg3, bg_castle1escape);

	if layer_background_get_sprite(bg1) = bg_factory3
		layer_background_sprite(bg1, bg_factory3escape);

	if layer_background_get_sprite(bg1) = bg_factory1
		layer_background_sprite(bg1, bg_factory1escape);

	if layer_background_get_sprite(bg2) = bg_factory2
		layer_background_sprite(bg2, bg_factory2escape);

	if layer_background_get_sprite(bg1) = bg_sewer1
		layer_background_sprite(bg1, bg_sewer1escape);

	if layer_background_get_sprite(bg2) = bg_sewer2
		layer_background_sprite(bg2, bg_sewer2escape);

	if layer_background_get_sprite(bg3) = bg_sewer3
		layer_background_sprite(bg3, bg_sewer3escape);
	*/
	
	var l = layer_get_all();
	for (var i = 0; i < array_length(l); i++;)
	{
		var layers_e = layer_get_all_elements(l[i]);
		for (var j = 0; j < array_length(layers_e); j++)
		{
			// backgrounds
			if layer_get_element_type(layers_e[j]) == layerelementtype_background
			{
				var bgspr = asset_get_index(sprite_get_name(layer_background_get_sprite(layers_e[j])) + "escape");
				if sprite_exists(bgspr)
				{
					if canflash
						flasha = 1;
					
					sprite_set_speed(bgspr, 1, spritespeed_framespergameframe);
					layer_background_change(layers_e[j], bgspr);
					layer_background_speed(layers_e[j], 0.2);
				}
			}
			break;
		}
	}
	
	// panic tiles
	var lay_id = get_layer("Tiles_1");
	var map_id = layer_tilemap_get_id(lay_id);
	
	if tilemap_get_tileset(map_id) == tile_desert_tileset
		tilemap_tileset(map_id, tile_desertescape_tileset);
}
canflash = false;