/// @description
if room == rm_editor {
	if (obj_editor.mode != 0)
        return;
    if (obj_editor.type > 2)
        return;
    if (place_meeting(x, y, obj_editor_button)/* || place_meeting(x, y, obj_script_button)*/)
        return;
	
	x += 32 * image_xscale
	image_xscale *= -1;
}