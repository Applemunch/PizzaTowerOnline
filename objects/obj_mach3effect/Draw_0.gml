


//switch color
//{
//case 0:
//break
	
//case 1:
//draw_set_color( make_colour_rgb(96, 208, 72))
//break

//case 2:
//draw_set_color( make_colour_rgb(224, 144, 0))
//break

//case 3:
//draw_set_color(make_colour_rgb(248, 0, 0))
//break


//}

if image_alpha > 0 && !scr_checkskin(checkskin.p_sage) && global.surfacemach
{
	// target surface
	if !surface_exists(surf)
		surf = surface_create(room_width, room_height);
	else
	{
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		
		// set palette
		pal_swap_set(spr_palette, paletteselect, false);

		// draw to surface
		if sprite_exists(sprite_index)
			draw_sprite_ext(sprite_index, floor(image_index), x, y, image_xscale, image_yscale, image_angle, c_white, 1)
		else
			draw_sprite_ext(spr_player_mach, floor(image_index), x, y, image_xscale, image_yscale, image_angle, c_white, 1)
		
		pal_swap_reset();
		
		// draw surface
		surface_reset_target();
		draw_surface_ext(surf, 0, 0, 1, 1, 0, image_blend, 1);
	}
}
else if image_alpha > 0
{
	if sprite_exists(sprite_index)
		draw_sprite_ext(sprite_index, floor(image_index), x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	else
		draw_sprite_ext(spr_player_mach, floor(image_index), x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}