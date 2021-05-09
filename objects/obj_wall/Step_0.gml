/// @description 
if room = rm_editor {
	if obj_editor.type == 4 {
		mask_index = -1;
		image_alpha = 0.4;
	}
	else {
		mask_index = obj_wall;
		image_alpha = 1;
	}
} else {
	visible = false;
}