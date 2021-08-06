//Ranking && milestone
if room == entrance_1
	global.srank = 11500
if room == medieval_1
{
	if !global.snickchallenge
		global.srank = 10300
	else
		global.srank = 8300
}
if room == chateau_1
	global.srank = 9300
if room == ruin_1 && !global.snickchallenge
	global.srank = 11200
if room == ufo_1
	global.srank = 10950
if room == floor1_room0 // desert
	global.srank = 13400
if room == floor2_room0 // mansion
    global.srank = 10000
if room == floor3_room0 // factory
    global.srank = 6500
if room == floor4_room0 // sewer
    global.srank = 5800
if room == floor5_room1 // freezer
    global.srank = 7800
if room == golf_room1
{
	global.srank = 4500;
	if global.gameplay != 0
		global.srank = 5500;
}
if room == farm_1
	global.srank = 10300
if room == graveyard_1 or room == graveyard_1_NEW
	global.srank = 11855
if room == dungeon_1 && !global.snickchallenge
	global.srank = 10300
if room == strongcold_10
	global.srank = 9000
if room == dragonlair_1
	global.srank = 4500
if room == beach_1
	global.srank = 14000
if room == forest_1
	global.srank = 14000
if room == etb_1
	global.srank = 3000

if room == custom_lvl_room
	alarm[1] = 4;
else
{
	global.arank = global.srank -(global.srank/4)
	global.brank = global.srank -(global.srank/4 * 2)
	global.crank = global.srank -(global.srank/4 * 3)
}

// change snick rematch appearance
var layers = layer_get_all();
for (var i = 0; i < array_length(layers); i++;)
{
	var layers_e = layer_get_all_elements(layers[i]);
	for (var j = 0; j < array_length(layers_e); j++)
	{
		if global.snickrematch
		{
			// backgrounds
			if layer_get_element_type(layers_e[j]) == layerelementtype_background
			{
				var getch = asset_get_index(sprite_get_name(layer_background_get_sprite(layers_e[j])) + "_re");
				if sprite_exists(getch)
					layer_background_sprite(layers_e[j], getch);
				break;
			}
			// tiles
			else if layer_get_element_type(layers_e[j]) == layerelementtype_tilemap
			{
				var getch = asset_get_index(tileset_get_name(tilemap_get_tileset(layers_e[j])) + "_re");
				if getch != -1
					tilemap_tileset(layers_e[j], getch);
				break;
			}
			// assets
			else if layer_get_element_type(layers_e[j]) == layerelementtype_sprite
			{
				var getch = asset_get_index(sprite_get_name(layer_sprite_get_sprite(layers_e[j])) + "_re");
				if sprite_exists(getch)
					layer_sprite_change(layers_e[j], getch);
			}
			else
				break;
		}
		else if global.panic
		{
			if layer_get_element_type(layers_e[j]) == layerelementtype_background
			&& layer_background_get_sprite(layers_e[j]) == bg_farm2
				layer_hspeed(layers[i], -2);
		}
		else
			break;
	}
}

if layer_exists("Tiles_1_NEW")
{
	if global.gameplay == 0
		layer_destroy("Tiles_1_NEW");
	else
		layer_destroy("Tiles_1");
}