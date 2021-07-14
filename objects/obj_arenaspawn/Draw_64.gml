if state == 118
{
	with obj_tv
		showtext = false;
	
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_font(global.bigfont);
    draw_text(random_range(1, -1) + (960 / 2), random_range(1, -1) + 500, "ROUND " + string(wave));
}