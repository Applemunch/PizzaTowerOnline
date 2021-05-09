for (var i = 0; i < abs(image_xscale); i++)
{
    draw_sprite_ext(sprite_index, -1, x + ((sign(image_xscale) * 32) * i), y, sign(image_xscale), sign(image_yscale), 0, c_white, 1)
	for (var j = 0; j < abs(image_yscale - 1); j++)
	    draw_sprite(spr_water2, -1, x + (32 * i), y + (32 * (j + 1)))
}