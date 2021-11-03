/// @description 
if room = rm_editor {
	if obj_editor.type == 3 {
		mask_index = sprite_index;
		image_alpha = 1;
	}
	else {
		mask_index = -1;
		image_alpha = 0.4;
	}
}

if destroy && room != rm_editor
{
    if oneway == false
    {
        if !instance_exists(inst)
            instance_destroy()
    }
    else
    {
		// detect onways
        if place_meeting(x, y, obj_solid) && place_meeting(x + 32, y, obj_onwaybigblock)
            inst = instance_place(x + 32, y, obj_onwaybigblock);
        if place_meeting(x, y, obj_solid) && place_meeting(x - 32, y, obj_onwaybigblock)
            inst = instance_place(x - 32, y, obj_onwaybigblock);
		
        if place_meeting(x, y, obj_onwaybigblock)
            inst = instance_place(x, y, obj_onwaybigblock);
		
        if inst != noone
        {
            if !instance_exists(inst)
                instance_destroy();
        }
    }
}