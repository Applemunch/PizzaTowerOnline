function scr_set_bgspd_trigger() {
	var lay_id1 = layer_get_id("Background")
	var lay_id2 = layer_get_id("Backgrounds_1")
	var lay_id3 = layer_get_id("Backgrounds_2")
	var lay_id4 = layer_get_id("Backgrounds_scroll")

	layer_hspeed(lay_id1, hsp)
	layer_hspeed(lay_id2, hsp)
	layer_hspeed(lay_id3, hsp)
	layer_hspeed(lay_id4, hsp)

	/*
	if hsp == 0
	{
	    layer_x(lay_id1, 0)
	    layer_x(lay_id2, 0)
	    layer_x(lay_id3, 0)
	}
	*/

	layer_vspeed(lay_id1, vsp)
	layer_vspeed(lay_id2, vsp)
	layer_vspeed(lay_id3, vsp)
	layer_vspeed(lay_id4, vsp)

	/*
	if vsp == 0
	{
	    layer_y(lay_id1, 0)
	    layer_y(lay_id2, 0)
	    layer_y(lay_id3, 0)
	}
	*/


}
