/// @description 
if room == rm_editor {
	visible = true;
	image_alpha = 0.4;
}
else {
	visible = false;
}

alarm[0] = 1;

width = sprite_get_width(sprite_index) * image_xscale;
height = sprite_get_height(sprite_index) * image_yscale;