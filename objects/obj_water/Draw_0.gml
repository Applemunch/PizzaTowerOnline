if scr_culling()
	exit;

for (var i = 0; i < abs(image_xscale); i++)
    draw_sprite(sprite_index, -1, x + (32 * i), y)
if abs(image_yscale) != 1
	draw_sprite_stretched(spr_water2, -1, x, y + 32, sprite_width, sprite_height - 32);
