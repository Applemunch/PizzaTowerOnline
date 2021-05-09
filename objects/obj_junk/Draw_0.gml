if scr_checkskin(checkskin.p_anton) && object_index == obj_junk
	draw_sprite_ext(spr_punchball, 0, x, y, abs(image_xscale), image_yscale, image_angle, image_blend, image_alpha);
else
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);