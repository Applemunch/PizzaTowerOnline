draw_set_colour(c_black);
draw_rectangle(0, 0, 960, 540, false);

if con > 0
{
	if irandom(50) == 5 && con >= 5
		draw_sprite_ext(spr_mario, 0, 960 / 2, 540 / 2, random_range(0.75, 1.25), random_range(0.75, 1.25), random_range(-2, 2), merge_colour(c_white, c_red, random_range(0, 0.5)), 1);
	else
		draw_sprite(spr_mario, 0, 960 / 2, 540 / 2);
}
