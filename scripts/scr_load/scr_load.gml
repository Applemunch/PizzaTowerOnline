function scr_load() {
	/*

	right_lvl = ".lvl";
	up_lvl = ".lvl";
	left_lvl = ".lvl";
	down_lvl = ".lvl";
	file = argument0;
	current_lvl = file;
		if (file_exists(file)) {
		    var load_file = file_text_open_read(file);
		
		    if (!file_text_eof(load_file)) {
		        var m_data = file_text_read_string(load_file);
		        var array = scr_string_split(m_data, "|");
		        var count = array_length_1d(array);
        
		        if (count > 0) {
		            for (var i = 0; i < count; i++) {
		                var json = array[i];
                
		                var j_map = json_decode(json);
					
		                var xx = ds_map_find_value(j_map, "x");
		                var yy = ds_map_find_value(j_map, "y");
		                var _xscale = ds_map_find_value(j_map, "image_xscale");
		                var _yscale = ds_map_find_value(j_map, "image_yscale");
		                var _img = ds_map_find_value(j_map, "image_index");
		                var index = asset_get_index(ds_map_find_value(j_map, "object_index"));
                
		                ds_map_destroy(j_map);
	                
		                with instance_create_layer(xx, yy, "Instances", index) {
							image_xscale = floor(_xscale);
							image_yscale = floor(_yscale);
							image_index = floor(_img);
						}
		            }
		        }
		    }
    
		    file_text_close(load_file);
		}
		else {
			game_restart();
		}

/* end scr_load */
}
