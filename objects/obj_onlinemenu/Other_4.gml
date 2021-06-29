// random background
if room == editor_entrance
{
	if instance_exists(obj_gms) && gms_info_isloggedin()
		gms_chat_toggle(false);
	
	var lbg = layer_get_id("Background");
	var bg = layer_background_get_id(lbg);
	layer_background_blend(bg, c_white);
	layer_background_sprite(bg, choose(bg_tower, bg_hubworld1back));
	layer_hspeed(lbg, 0.5);
}

if room != editor_entrance && room != custom_lvl_room && room != rank_room && room != timesuproom
	instance_destroy();
if (room == rank_room or room == timesuproom) && menu != -1
	instance_destroy();