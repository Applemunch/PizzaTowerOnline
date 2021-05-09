/// @description 
if !selected {
	if position_meeting(mouse_x, mouse_y, self) {
		image_index = 1;
	}
	else {
		image_index = 0;
	}
} else {
	image_index = 2;
}

if func == 0 && index == 0 {
	selected = obj_editor.phase;
}

if func == 0 && index == 3 && instance_exists(obj_editorsettings_menu) {
	selected = 1;
} else {
	selected = 0;
}

if func == 2 && index == obj_editor.type {
	selected = true;
}
/*
if func == 1 && index == obj_editor.obj_selected[obj_editor.type] {
	selected = true;
}