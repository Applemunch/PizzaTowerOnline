if  ds_list_find_index(global.saveroom, id) = -1
{
instance_create(x+ 16,y,obj_debris)
instance_create(x+ 16,y,obj_debris)
instance_create(x+ 16,y,obj_debris)
instance_create(x + 16,y,obj_debris)

scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
ds_list_add(global.saveroom, id) 

var lay_id = get_layer("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, x, y);
data = tile_set_empty(data)
tilemap_set_at_pixel(map_id, data, x, y);
}

