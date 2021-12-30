function draw_set_flash(enable, col = (scr_stylecheck(2) ? c_white : merge_colour(c_red, c_white, 0.9)))
{
	// default color is kinda weird but i think it's what shd_hit does
	gpu_set_fog(enable, col, 0, 1);
}
