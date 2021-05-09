if sprite_exists(sprite_index)
	draw_self();

draw_set_font(global.font_small);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
if con > -1
	draw_text(x + random_range(-1, 1), bbox_top - 16, string(msg));
draw_set_valign(fa_top);