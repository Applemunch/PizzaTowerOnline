/// @description 
scr_get_bgname(image_index)
scr_set_background_trigger(image_index)
/*
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
switch(image_index) {
	case 0:
		name = "bg_tower";
		layer_background_sprite(back_id, bg_tower);
		break;
	case 1:
		name = "bg_entrance3";
		layer_background_sprite(back_id, bg_entrance3);
		break;
	case 2:
		name = "bg_medieval2";
		layer_background_sprite(back_id, bg_medieval2);
		break;
	case 3:
		name = "bg_medievalinterior";
		layer_background_sprite(back_id, bg_medievalinterior);
		break;
	case 4:
		name = "bg_medievallibrairy1";
		layer_background_sprite(back_id, bg_medievallibrairy1);
		break;
	case 5:
		name = "bg_medievaltreasure1";
		layer_background_sprite(back_id, bg_medievaltreasure1);
		break;
	case 6:
		name = "bg_medievaltreasure2";
		layer_background_sprite(back_id, bg_medievaltreasure2);
		break;
	case 7:
		name = "bg_secret";
		layer_background_sprite(back_id, bg_secret);
		break;
}