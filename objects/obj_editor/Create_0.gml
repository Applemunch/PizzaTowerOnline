/// @description 
instance_destroy();
exit;



type = 0; // 0 = Level structure | 1 = Enemies | 2 = Transformations | 3 = Camera | 4 = Camera
phase = 0;
mode = 0; // 0 = place_delete, 1 = save, 2 = load

editor_score = 0;

scr_obj_level();
scr_obj_enemies();
scr_obj_transformations();
scr_obj_tiles();
scr_obj_cameras();
scr_obj_triggers();

show_text = true;

obj_layer[0] = "Level_structure";
obj_layer[1] = "Enemies";
obj_layer[2] = "Level_structure";
obj_layer[3] = "Tile_structure";
obj_layer[4] = "Camera";
obj_layer[5] = "Triggers";

obj_selected[0] = 0;
obj_selected[1] = 0;
obj_selected[2] = 0;
obj_selected[3] = 0;
obj_selected[4] = 0;
obj_selected[5] = 0;


alarm[0] = 1;
alarm[1] = 60*120; //auto-save

for (var i = 0; i < 4; i++) {
	with instance_create_layer(32 + (64*i), 32, "Buttons", obj_editor_button) {
		index = i;
		func = 0;
		sprite_index = spr_big_button;
	}
}

mask_index = spr_wall1;