/// @description 
mask_index = spr_null
if room == rm_editor {
	if global.loadeditor == false {
		x = obj_editor.editor_score;
	}
	else {
		obj_editor.editor_score = x;
	}
}