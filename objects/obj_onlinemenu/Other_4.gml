// random background
if room == editor_entrance
{
	gmsroom = -1;
	if instance_exists(obj_gms) && gms_info_isloggedin()
		gms_chat_toggle(false);
	
	var lbg = layer_get_id("Background");
	var bg = layer_background_get_id(lbg);
	layer_background_blend(bg, c_white);
	layer_background_sprite(bg, choose(bg_tower, bg_hubworld1back, bg_factory1, bg_factory3, bg_desertnight, bg_ufo, bg_ravine, bg_castlev1, bg_sewer1, bg_freezer3act2, bg_dungeon1, bg_dungeontomato, bg_dungeonskeleton1, bg_entrance1, bg_entrance3, bg_strongcold1, bg_strongcold5, bg_strongcold6, bg_graveyardunderground, bg_graveyardinterior, bg_farmceilling, bg_pinball1, bg_pinball2, bg_pinball3, bg_beach2, bg_beach3, bg_forest2, bg_forest3, bg_kungfucity, bg_kungfugraffiti, bg_minigolf2, bg_space1));
	layer_hspeed(lbg, 0.5);
}

if room != editor_entrance && room != custom_lvl_room && room != rank_room && room != timesuproom
	instance_destroy();
if (room == rank_room or room == timesuproom) && menu != -1
	instance_destroy();