if scr_culling()
	exit;

for (var i = 0; i < abs(image_xscale); i++)
    draw_sprite_ext(spr_water, -1, x + (32 * i), y, 1, 1, image_angle, image_blend, 0.5)
if abs(image_yscale) != 1
	draw_sprite_stretched_ext(spr_water2, -1, x, y + 32, sprite_width, sprite_height - 32, image_blend, 0.5);
