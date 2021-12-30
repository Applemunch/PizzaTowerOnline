if image_xscale == 0 or image_yscale == 0
or scr_culling()
	exit;

var drawdir = sign(image_yscale);
for (var i = 0; i < abs(image_xscale); i++)
    draw_sprite_ext(sprite_index, -1, x + (32 * i) * sign(image_xscale), y, 1, drawdir, image_angle, image_blend, image_alpha)
if abs(image_yscale) != 1
{
	draw_set_colour($0000F8);
	draw_rectangle(x, y + 32 * drawdir, x + sprite_width - 1, y + sprite_height - sprite_yoffset - 1, false);
}
