/// @description 
if room = rm_editor {
	if obj_editor.type == 4 {
		mask_index = sprite_index;
		image_alpha = 0.55;
	}
	else {
		mask_index = -1;
		image_alpha = 0;
	}
}
else {
	//active = place_meeting(x, y, obj_player1);
}