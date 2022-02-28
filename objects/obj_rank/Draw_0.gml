// draw
if sprite_index == spr_yousuck
	pal_swap_set(spr_peppalette, clamp(obj_player1.paletteselect, 1, pal_swap_get_pal_count(spr_peppalette) - 1), false)
else
	pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
shader_reset()

// the text
draw_sprite_ext(asset_get_index(sprite_get_name(sprite_index) + "_text"), image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
