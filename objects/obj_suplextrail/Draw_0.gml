pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
pal_swap_reset();
