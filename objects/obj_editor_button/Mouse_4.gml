/// @description 
switch(func) {
	case 0: 
		switch(index) {
			case 0:
				with obj_editor {
					mode = 0;
					if phase == 1 {
						phase = 0;
					}
					else if phase == 0 {
						phase = 1;
					}
					alarm[0] = 1;
				}
				break;
			case 1:
				if global.optimize == 0 {
					instance_activate_all();
					scr_save(get_string("Save file:", ".lvl"));
				}
				break;
			case 2:
				global.loadeditor = true;
				room_restart();
				break;
			case 3:
				if !instance_exists(obj_editorsettings_menu) {
					instance_create_layer(10*32, 32, "Camera", obj_editorsettings_menu);
				}
				break;
		}
		break;
	case 1: 
		obj_editor.obj_selected[obj_editor.type] = index;
		with obj_editor_button {
			if func == 1 {
				selected = false;
			}
		}
		selected = true;
		with obj_editor {
			phase = 2;
			mode = 0;
			alarm[0] = 1;
		}
		break;
	case 2:
		obj_editor.type = index;
		with obj_editor {
			alarm[0] = 1;
		}
		break;
	case 3:
		switch(index) {
			case 0:
				with obj_bg_set {
					image_index++;
					alarm[0] = 1;
				}
				break;
			case 1:
				with obj_music_set {
					image_index++;
					alarm[0] = 1;
				}
				break;
			case 2:
				with obj_score_set {
					alarm[0] = 1;
				}
				break;
		}
		break;
	case 4:
		switch(index) {
			case 0:
				with obj_editor {
					phase = 2;
				}
				with obj_editorsettings_menu {
					instance_destroy();
				}
				with obj_editor_button {
					if func == 3 {
						instance_destroy();
					}
				}
				instance_destroy();
		}
}
