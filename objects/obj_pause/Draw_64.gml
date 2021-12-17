if pause
{
	application_surface_draw_enable(true);
	
	draw_set_colour(c_black);
	draw_rectangle(0, 0, 960, 540, false);
	
	if array_length(bgs) == 0
	{
		// get backgrounds
		if string_startswith(room_get_name(room), "grinch_")
			bgs = [bg_grinch_stu];
		else
		{
			var layers = layer_get_all();
			for (var i = array_length(layers) - 1; i > 0; i--)
			{
				var layers_e = layer_get_all_elements(layers[i]);
				if array_length(layers_e) > 0
				&& layer_get_element_type(layers_e[0]) == layerelementtype_background
				{
					var getbg = layer_background_get_sprite(layers_e[0]);
					if sprite_exists(getbg)
						array_push(bgs, getbg);
				}
			}
		}
	}
	else
	{
		// draw normally
		if !surface_exists(surf)
			surf = surface_create(960, 540);
		
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		
		for(var i = 0; i < array_length(bgs); i++)
			draw_sprite_tiled(bgs[i], 0, 0, 0);
		
		surface_reset_target();
		draw_surface(surf, 0, 0);
	}
	
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, 960, 540, false);
	
	// pause
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_sprite_ext(spr_pausescreen, selected, 0, 4, 1, 1, 0, c_black, 1);
	draw_sprite(spr_pausescreen, selected, 0, 0);
}
else
	bgs = [];