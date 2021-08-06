draw_self();
if global.timedgatetime > 0
{
	draw_set_font(global.bigfont);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_color(c_white);
	draw_text(x + 32, y - 16, string(global.timedgatetime + 1));

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}