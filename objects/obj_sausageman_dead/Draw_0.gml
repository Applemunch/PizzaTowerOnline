



//Draw
if haspalette
	pal_swap_set(spr_palette, paletteselect, false)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
if haspalette
	shader_reset()



