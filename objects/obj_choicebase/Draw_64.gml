// background
var color = make_color_rgb(121, 103, 151);
draw_set_alpha(0.85);
draw_rectangle_color(0, 0, 960 - 1, 540 - 1, color, color, color, color, 0);

if surface_exists(pizzasurf)
{
	surface_set_target(pizzasurf);
	
	draw_clear_alpha(c_black, 0);
	draw_sprite_tiled(pizza, 0, floor(x), floor(y));
	
	surface_reset_target();
	draw_surface_ext(pizzasurf, 0, 0, 1, 1, 0, c_white, 0.25);
}
else
	pizzasurf = surface_create(960, 540);

y -= 0.5;
x += 0.5;

if basetext
{
	// text
	draw_set_font(titlefont);
	draw_text((960 / 2) + random_range(-1, 1), 540 - 100, palname);
	draw_set_font(descfont);
	draw_text(960 / 2, 540 - 64, paldesc);
}