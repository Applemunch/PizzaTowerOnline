// background
var color = make_color_rgb(121, 103, 151);
draw_set_alpha(0.85);
draw_rectangle_color(0, 0, 960, 540, color, color, color, color, 0);

if surface_exists(pizzasurf)
{
	surface_set_target(pizzasurf);
	draw_set_alpha(0.25);
	draw_sprite_tiled(pizza, 0, floor(x), floor(y));
	draw_set_alpha(1);
	surface_reset_target();
	
	draw_surface(pizzasurf, 0, 0);
}
else
	pizzasurf = surface_create(960, 540);

y -= 0.5;
x += 0.5;

// draw the skins
if !locked
{
	img += sprite_get_speed(spr_idle);
	if img >= sprite_get_number(spr_idle)
		img -= sprite_get_number(spr_idle);
}
else
	img = 0;

var _spr = spr_idle;

draw_set_colour(c_white);
draw_set_font(global.bigfont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if locked
{
	draw_text((960 / 2) + xoffset, ((540 / 2) + yoffset) - sprite_get_height(_spr), "LOCKED");
	if sprite_exists(_spr)
		draw_sprite_ext(_spr, img, (960 / 2) + xoffset, (540 / 2) + yoffset + 48, 2, 2, 0, c_black, 1);
}
else if sprite_exists(_spr)
	draw_sprite_ext(_spr, img, (960 / 2) + xoffset, (540 / 2) + yoffset + 48, 2, 2, 0, c_white, (100 - abs(xoffset)) / 100);

// text
draw_text((960 / 2) + random_range(-1, 1), 540 - 100, ((hatselect < array_length(hatnames) && array_length(hatnames[hatselect]) >= 2) ? hatnames[hatselect][1] : "UNKNOWN HAT"));

draw_set_font(global.font_small);
if !locked
	draw_text(960 / 2, 540 - 64, ((hatselect < array_length(hatnames) && array_length(hatnames[hatselect]) >= 3) ? hatnames[hatselect][2] : "loypoll please add details"));