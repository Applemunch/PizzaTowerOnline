function scr_save(lvl)
{
	lvl_edit = file_text_open_write(lvl);
	for (var i = 0; i < instance_number(par_universal); i++) {
		var instance = instance_find(par_universal, i);
		var index = instance.object_index;
		var index_write = object_get_name(index);

		var instance_map = ds_map_create();
		ds_map_add(instance_map, "x", instance.x);
		ds_map_add(instance_map, "y", instance.y);
		ds_map_add(instance_map, "image_xscale", instance.image_xscale);
		ds_map_add(instance_map, "image_yscale", instance.image_yscale);

		ds_map_add(instance_map, "image_index", instance.image_index);

		ds_map_add(instance_map, "object_index", index_write);

		json_instance = json_encode(instance_map);

		file_text_write_string(lvl_edit, json_instance);
		file_text_write_string(lvl_edit, "|");

		ds_map_destroy(instance_map);
	}

	file_text_close(lvl_edit);

/* end scr_save */
}
