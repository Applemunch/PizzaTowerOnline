dz = 1
if instance_exists(obj_dw_transition)
	dz = obj_dw_transition.dz - 1

if (dz == 0)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)
if (dz == 1)
    draw_sprite_ext(sprite_index, image_index, (x * 2), (y * 2), (image_xscale * 2), (image_yscale * 2), 0, c_white, image_alpha)