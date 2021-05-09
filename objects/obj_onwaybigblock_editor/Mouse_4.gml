/// @description 
if room == rm_editor
{
    if obj_editor.mode != 0
        exit;
	
    if obj_editor.type > 2
        exit;
	
    if place_meeting(x, y, obj_editor_button)/* or place_meeting(x, y, obj_script_button)*/
        exit;
	
    x += 64 * image_xscale;
    image_xscale *= -1;
}