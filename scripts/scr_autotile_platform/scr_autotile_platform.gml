function scr_autotile_platform() {
	var iw = sprite_width
	var tile_left = place_meeting((x - iw), y, object_index)
	var tile_right = place_meeting((x + iw), y, object_index)
	var tile = 0
	if tile_left
	{
	    tile = 2
	    if tile_right
	        tile = 1
	}
	else if tile_right
	{
	    tile = 0
	    if tile_left
	        tile = 1
	}
	return tile;


}
