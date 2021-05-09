for (var i = 0; i < abs(image_xscale); i++)
{
    draw_sprite(spr_water, -1, x + (32 * i), y)
	for (var j = 0; j < abs(image_yscale - 1); j++)
	    draw_sprite(spr_water2, -1, x + (32 * i), y + (32 * (j + 1)))
}