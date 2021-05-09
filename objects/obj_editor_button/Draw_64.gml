/// @description 
display_set_gui_size(960, 540);
draw_set_font(global.font_small);
draw_set_color(c_white);

if show_text && func == 1 {
	draw_set_halign(fa_center);
	draw_text(xstart + 16, ystart - 16, name);
}
if func == 2 {
	draw_set_halign(fa_left);
	draw_text(xstart + 2, ystart + 4, name);
}

if func == 3 {
	switch(index) {
		case 0: 
			name = "Background: " + obj_bg_set.name;
			break;
		case 1: 
			name = "Music: " + obj_music_set.name;
			break;
		case 2: 
			name = "Score: " + string(obj_editor.editor_score);
			break;
	}
		draw_set_halign(fa_left);
		draw_text(xstart + 2, ystart + 4, name);
}