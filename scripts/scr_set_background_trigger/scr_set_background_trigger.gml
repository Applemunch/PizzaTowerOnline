function scr_set_background_trigger(argument0) {
	var lay_id_bg1 = layer_get_id("Backgrounds_1")
	var back_id_bg1 = layer_background_get_id(lay_id_bg1)

	var lay_id_bg2 = layer_get_id("Backgrounds_2")
	var back_id_bg2 = layer_background_get_id(lay_id_bg2)

	var lay_id_bg3 = layer_get_id("Backgrounds_3")
	var back_id_bg3 = layer_background_get_id(lay_id_bg3)

	var lay_id_bg4 = layer_get_id("Backgrounds_4")
	var back_id_bg4 = layer_background_get_id(lay_id_bg4)

	var lay_id_sky = layer_get_id("Backgrounds_sky")
	var back_id_sky = layer_background_get_id(lay_id_sky)

	var lay_id_sky2 = layer_get_id("Backgrounds_sky2")
	var back_id_sky2 = layer_background_get_id(lay_id_sky2)

	var lay_id_scroll = layer_get_id("Backgrounds_scroll")
	var back_id_scroll = layer_background_get_id(lay_id_scroll)
	layer_hspeed(lay_id_scroll, 0)
	layer_vspeed(lay_id_scroll, 0)

	var lay_id_ground1 = layer_get_id("Backgrounds_Ground1")
	var back_id_ground1 = layer_background_get_id(lay_id_ground1)

	var lay_id_ground2 = layer_get_id("Backgrounds_Ground2")
	var back_id_ground2 = layer_background_get_id(lay_id_ground2)

	var lay_id_still1 = layer_get_id("Backgrounds_still1")
	var back_id_still1 = layer_background_get_id(lay_id_still1)

	var lay_id_stillH1 = layer_get_id("Backgrounds_stillH1")
	var back_id_stillH1 = layer_background_get_id(lay_id_stillH1)

	var _index = argument0

	layer_background_sprite(back_id_bg1, spr_null)
	layer_background_sprite(back_id_bg2, spr_null)
	layer_background_sprite(back_id_bg3, spr_null)
	layer_background_sprite(back_id_bg4, spr_null)
	layer_background_sprite(back_id_sky, spr_null)
	layer_background_sprite(back_id_sky2, spr_null)
	layer_background_sprite(back_id_scroll, spr_null)
	layer_background_sprite(back_id_ground1, spr_null)
	layer_background_sprite(back_id_ground2, spr_null)
	layer_background_sprite(back_id_still1, spr_null)
	layer_background_sprite(back_id_stillH1, spr_null)

	switch _index
	{
	    default:
	        layer_background_sprite(back_id_bg1, bg_tower)
	        break
	
	    case 1:
	        layer_background_sprite(back_id_bg1, bg_entrance3)
	        break
	
	    case 2:
	        layer_background_sprite(back_id_bg1, bg_entrance1)
	        layer_background_sprite(back_id_bg2, bg_entrance2)
	        break
	
	    case 3:
	        layer_background_sprite(back_id_bg1, bg_medieval3)
			layer_background_sprite(back_id_scroll, bg_medieval2)
			if room == custom_lvl_room
	            layer_hspeed(lay_id_scroll, 1)
	        layer_background_sprite(back_id_bg3, bg_medieval1)
	        break
	
	    case 4:
	        layer_background_sprite(back_id_bg1, bg_medieval3)
	        layer_background_sprite(back_id_bg2, bg_medievalinterior)
	        break
	
	    case 5:
	        layer_background_sprite(back_id_bg2, bg_medievallibrairy1)
	        layer_background_sprite(back_id_bg1, bg_medievallibrairy2)
	        break
	
	    case 6:
		case 7:
	        layer_background_sprite(back_id_bg2, bg_medievaltreasure1)
	        layer_background_sprite(back_id_bg1, bg_medievaltreasure2)
	        break
	
	    case 8:
	        layer_background_sprite(back_id_bg3, bg_ruin)
	        layer_background_sprite(back_id_scroll, bg_ruincloud)
			if room == custom_lvl_room
	            layer_hspeed(lay_id_scroll, 1)
	        layer_background_sprite(back_id_bg1, bg_medieval3)
	        break
	
	    case 9:
	        layer_background_sprite(back_id_bg3, bg_ruinarchitecture1)
	        layer_background_sprite(back_id_scroll, bg_ruinarchitecture2)
			if room == custom_lvl_room
	            layer_hspeed(lay_id_scroll, 1)
	        layer_background_sprite(back_id_bg1, bg_ruinarchitecture3)
	        break
	
	    case 10:
	        layer_background_sprite(back_id_ground1, bg_ruincheese1)
	        layer_background_sprite(back_id_ground2, bg_ruincheese2)
	        layer_background_sprite(back_id_scroll, bg_ruincheese3)
			if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, -1)
	        break
	
	    case 11:
	        layer_background_sprite(back_id_ground1, bg_ruinstatue1)
	        layer_background_sprite(back_id_ground2, bg_ruinstatue2)
	        layer_background_sprite(back_id_scroll, bg_ruincloud)
			if room == custom_lvl_room
	            layer_hspeed(lay_id_scroll, 1)
	        layer_background_sprite(back_id_bg1, bg_ruinstatue3)
	        break
	
	    case 12:
	        layer_background_sprite(back_id_scroll, bg_dungeon2)
	        if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, -1)
	        layer_background_sprite(back_id_bg3, bg_dungeon3)
	        layer_background_sprite(back_id_bg1, bg_dungeontomato)
	        break
	
	    case 13:
	        layer_background_sprite(back_id_scroll, bg_dungeon2)
	        if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, -1)
	        layer_background_sprite(back_id_bg3, bg_dungeon3)
	        layer_background_sprite(back_id_bg1, bg_dungeondark2)
	        break
	
	    case 14:
	        layer_background_sprite(back_id_scroll, bg_dungeonskeleton2)
	        if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, -1)
	        layer_background_sprite(back_id_bg3, bg_dungeontomato2)
	        layer_background_sprite(back_id_bg1, bg_dungeon1)
	        break
	
	    case 15:
	        layer_background_sprite(back_id_scroll, bg_dungeonskeleton2)
	        if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, -1)
	        layer_background_sprite(back_id_ground1, bg_dungeondark1)
	        layer_background_sprite(back_id_bg1, bg_dungeonskeleton1)
	        break
	
	    case 16:
	        layer_background_sprite(back_id_ground1, bg_dragonlair1)
			layer_background_sprite(back_id_bg1, bg_medieval3)
	        break
	
	    case 17:
	        layer_background_sprite(back_id_bg3, bg_chateau1)
	        layer_background_sprite(back_id_scroll, bg_chateau2)
			if room == custom_lvl_room
	            layer_hspeed(lay_id_scroll, 1)
	        layer_background_sprite(back_id_bg1, bg_chateau3)
	        break
	
	    case 18:
	        layer_background_sprite(back_id_bg2, bg_chateauinterior)
	        layer_background_sprite(back_id_bg1, bg_chateau3)
	        break
	
	    case 19:
	        layer_background_sprite(back_id_bg2, bg_chateaulibrary)
	        layer_background_sprite(back_id_bg1, bg_medievallibrairy2)
	        break
	
	    case 20:
	        layer_background_sprite(back_id_bg2, bg_chateautreasure1)
	        layer_background_sprite(back_id_bg1, bg_chateautreasure2)
	        break
	
	    case 21:
	        layer_background_sprite(back_id_scroll, bg_dungeonskeleton2)
	        if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, -1)
	        layer_background_sprite(back_id_ground1, bg_dungeondark1)
	        layer_background_sprite(back_id_bg1, bg_strongcold6)
	        break
	
	    case 22:
	        layer_background_sprite(back_id_scroll, bg_dungeonskeleton2)
	        if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, -1)
	        layer_background_sprite(back_id_bg3, bg_dungeontomato2)
	        layer_background_sprite(back_id_bg1, bg_strongcold1)
	        break
	
	    case 23:
	        layer_background_sprite(back_id_scroll, bg_strongcold2)
	        if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, 1)
	        layer_background_sprite(back_id_bg3, bg_strongcold3)
	        layer_background_sprite(back_id_bg1, bg_strongcold4)
	        break
	
	    case 24:
	        layer_background_sprite(back_id_scroll, bg_strongcold2)
	        if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, 1)
	        layer_background_sprite(back_id_bg3, bg_strongcold3)
	        layer_background_sprite(back_id_bg1, bg_strongcold5)
	        break
	
	    case 25:
	        layer_background_sprite(back_id_bg1, bg_desert)
	        break
	
	    case 26:
	        layer_background_sprite(back_id_bg1, bg_ravine)
	        break
	
	    case 27:
	        layer_background_sprite(back_id_bg1, bg_cavern)
	        break
	
	    case 28:
	        layer_background_sprite(back_id_bg1, bg_ufo)
	        break
	
	    case 29:
	        layer_background_sprite(back_id_bg2, bg_ufo2)
	        layer_background_sprite(back_id_bg1, bg_desert)
	        break
	
	    case 30:
	        layer_background_sprite(back_id_bg3, bg_pizzamartinterior)
	        layer_background_sprite(back_id_bg2, bg_medievallibrairy1)
	        layer_background_sprite(back_id_bg1, bg_medievallibrairy2)
	        break
	
	    case 31:
	        layer_background_sprite(back_id_bg4, bg_pizzamartinterior)
	        layer_background_sprite(back_id_bg3, bg_ruinarchitecture1)
	        layer_background_sprite(back_id_scroll, bg_ruinarchitecture2)
			if room == custom_lvl_room
	            layer_hspeed(lay_id_scroll, 1)
			layer_background_sprite(back_id_bg1, bg_ruinarchitecture3)
	        break
	
	    case 32:
	        layer_background_sprite(back_id_bg4, bg_pizzamartinterior)
	        layer_background_sprite(back_id_scroll, bg_dungeon2)
			if room == custom_lvl_room
	            layer_vspeed(lay_id_scroll, -1)
			layer_background_sprite(back_id_bg3, bg_dungeon3)
			layer_background_sprite(back_id_bg1, bg_dungeondark2)
	        break
	
	    case 33:
	        layer_background_sprite(back_id_bg2, bg_pizzamartinterior)
	        layer_background_sprite(back_id_bg1, bg_desert)
	        break
	
	    case 34:
	        layer_background_sprite(back_id_sky, bg_graveyardsun)
	        layer_background_sprite(back_id_ground1, bg_graveyard1)
	        break
	
	    case 35:
	        layer_background_sprite(back_id_bg1, bg_graveyardunderground)
	        break
	
	    case 36:
	        layer_background_sprite(back_id_bg1, bg_graveyardinterior)
	        break
	
	    case 37:
			layer_background_sprite(back_id_ground1, bg_farm1)
	        layer_background_sprite(back_id_bg1, bg_farm2)
	        break
	
	    case 38:
	        layer_background_sprite(back_id_bg1, bg_farm2)
	        break
	
	    case 39:
	        layer_background_sprite(back_id_bg1, bg_farminterior)
	        break
	
	    case 40:
	        layer_background_sprite(back_id_bg1, bg_farmceilling)
	        break
	
	    case 41:
	        layer_background_sprite(back_id_bg1, bg_pinball1)
	        break
	
	    case 42:
	        layer_background_sprite(back_id_bg1, bg_pinball2)
	        break
	
	    case 43:
	        layer_background_sprite(back_id_bg1, bg_pinball3)
	        break
	
	    case 44:
	        layer_background_sprite(back_id_scroll, bg_secret)
			if room == custom_lvl_room
			{
	            layer_hspeed(lay_id_scroll, 1)
	            layer_vspeed(lay_id_scroll, 1)
			}
	        break
	
		case 45:
	        layer_background_sprite(back_id_sky2, bg_beach1)
			layer_background_speed(back_id_sky2, room_speed * 0.1);
	        break
	
		case 46:
	        layer_background_sprite(back_id_bg1, bg_beach2)
	        break
	
		case 47:
	        layer_background_sprite(back_id_bg1, bg_beach3)
	        break
	
		case 48:
	        layer_background_sprite(back_id_still1, bg_forest1)
	        layer_background_sprite(back_id_scroll, bg_ruincloud)
		
			layer_depth(lay_id_scroll, layer_get_depth(lay_id_still1) - 1);
			if room == custom_lvl_room
	            layer_hspeed(lay_id_scroll, 1)
	        break
	
		case 49:
	        layer_background_sprite(back_id_stillH1, bg_forest2)
	        break
	
		case 50:
	        layer_background_sprite(back_id_stillH1, bg_forest3)
	        break
	}


}
