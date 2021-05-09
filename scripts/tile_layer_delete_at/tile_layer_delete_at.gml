/// @description Deletes the tile(s) at a given depth and position.
/// @param depth The depth of a tile to be deleted.
/// @param x The x position at which to delete a tile.
/// @param y The y position at which to delete a tile.
/// @returns 
function tile_layer_delete_at(argument0, argument1, argument2) {

	var __depth = argument0;
	var __x = argument1;
	var __y = argument2;

	var __tile_el = tile_layer_find(__depth, __x, __y);
	if (__tile_el != -1)
	{
		layer_tile_destroy(__tile_el);			
	}


}
