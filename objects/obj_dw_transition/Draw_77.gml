if room == rm_deltarune
{
	application_surface_draw_enable(false);
	draw_set_colour(c_black);
	
	var xx = 960 - lerp(640, 960, 0.5), yy = 540 - lerp(480, 540, 0.5);
	draw_surface_ext(application_surface, xx, yy, 1, 1, 0, c_white, 1);
}