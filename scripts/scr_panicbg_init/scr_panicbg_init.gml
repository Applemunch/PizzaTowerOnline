function scr_panicbg_init() {
	//DDP Initialize wavy panic background whenever timer starts or room changes
	if !check_shaders()
		exit;
	
	var layers, layernum = 0

	// Check for all layers that exist
	/*
	for (i = 0; i < 3; ++i) {
		var layername = "Backgrounds_" + string(i + 1)
		if layer_exists(layername) {
			layers[layernum++] = layername
		}
	}
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
				if layer_get_depth(l[i]) >= 0
				{
					var bgspr = layer_background_get_sprite(layers_e[j]);
					if bgspr != bg_etbbrick
						layers[layernum++] = layer_get_name(l[i]);
				}
			}
			break;
		}
	}
	
	if !layernum {
		// No backgrounds found, or backgrounds had wrong names
		exit
	}
	
	// Change to panic shader on top layer, reset on bottom layer
	var bottom_id = layer_get_id(layers[layernum - 1])
	var top_id = layer_get_id(layers[0])
	layer_script_begin(bottom_id, scr_panicbg_start)
	layer_script_end(top_id, scr_panicbg_end)


}
