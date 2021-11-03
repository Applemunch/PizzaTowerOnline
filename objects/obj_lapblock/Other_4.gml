mylayer = layer_get_id("Tiles_LAP");

if ds_list_find_index(global.saveroom, id) != -1
{
	if layer_exists(mylayer)
		layer_set_visible(mylayer, false);
	instance_destroy(id, false);
	exit;
}

if layer_exists(mylayer)
{
	layer_depth(mylayer, 96);
	layer_shader(mylayer, shd_layeralpha);
}