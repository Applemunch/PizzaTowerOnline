
/*
/// @description 
x = mouse_x - 16;
y = mouse_y - 16;

if instance_exists(obj_editorsettings_menu) {
	phase = 0;
	alarm[0] = 1;
	exit;
}

if phase == 2 {
	if !mouse_check_button(mb_left) {
		phase = 0;
	}
}

if type == 3 {
	with obj_solid {
		image_alpha = 0.5;
	}
}
else {
	with obj_solid {
		image_alpha = 1;
	}
}

move_snap(32, 32);

if mode == 0 && phase == 0 {
	if (mouse_check_button(mb_left) && !place_meeting(x, y, obj_editor_button)) && !position_meeting(mouse_x, mouse_y, obj_editor_button){
		with instance_create_layer(x, y, string(obj_layer[type]), obj_index[type, obj_selected[type]]) {
			if place_meeting(x, y, obj_editor_button) {
				instance_destroy();
			}
			if !visible {
				visible = true;
			}
		}
		if phase == 1 {
			phase = 0;
			alarm[0] = 1;
		}
	}
}