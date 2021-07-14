/// @description show fps
if global.showfps
{
	draw_set_font(global.font_small);
	draw_set_colour(c_white);
	
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	
	draw_text_transformed(960 - 10, 540 - 10, string(fps), 1, 1, 0);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}