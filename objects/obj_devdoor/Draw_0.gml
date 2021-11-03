if open
{
	draw_set_colour(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(_camx, _camy, _camx + _camw, _camy + _camh, false);

	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(global.font_small);

	for(var i = 0; i < array_length(actions); i++)
	{
		draw_set_colour(i == sel ? c_yellow : c_white);
		draw_text(8, 8 + i * 16, actions[i][0]);
	}
}