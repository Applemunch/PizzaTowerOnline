if !mouse_check_button(mb_middle) && !keyboard_check_direct(vk_printscreen)
{
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	draw_sprite(sprite_index, image_index, mx, my);
	
	draw_set_colour(c_white);
	draw_set_font(global.font_small);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(mx, my, string(drawtext));
	
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
}