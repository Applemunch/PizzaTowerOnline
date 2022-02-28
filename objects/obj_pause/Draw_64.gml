if pause or pausefad == 2
{
	if pausefad != 2
		application_surface_draw_enable(true);
	
	/*
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
	*/
	
	// manage fading
	if pausefad == 1 && pausealpha < 1
		pausealpha += 0.1;
	if pausefad == 2
	{
		if pausealpha > 0
			pausealpha -= 0.15;
		else
		{
			pausefad = 0;
			if sprite_exists(pausebg)
				sprite_delete(pausebg);
			exit;
		}
	}
	
	// draw the background
	if pausefad != 2
	{
		draw_set_colour(c_black);
		draw_rectangle(0, 0, 960, 540, false);
	
		if sprite_exists(pausebg) && check_shaders()
		{
			if pausealpha < 1
				draw_sprite_ext(pausebg, 0, 0, 0, 0.5, 0.5, 0, c_white, 1 - pausealpha);
		
			draw_set_alpha(pausebg);
			shader_set(shd_blur);
			shader_set_uniform_f(shader_get_uniform(shd_blur, "size"), 960 / 2 + 32, 540 / 2 + 32, 8);
			draw_sprite_ext(pausebg, 0, 0, 0, 0.5, 0.5, 0, c_white, pausealpha);
			shader_reset();
		
			draw_set_alpha(pausealpha / 2);
			draw_rectangle(0, 0, 960, 540, false);
		}
	}
	
	// pause
	if !surface_exists(pausesurf)
		pausesurf = surface_create(960, 540);
	surface_set_target(pausesurf);
	
	draw_clear_alpha(c_black, 0);
	draw_set_alpha(1);
	draw_sprite_ext(spr_pausescreen, selected, 0, 4, 1, 1, 0, c_black, 1);
	draw_sprite_ext(spr_pausescreen, selected, 0, 0, 1, 1, 0, c_white, 1);
	
	surface_reset_target();
	draw_surface_ext(pausesurf, 0, 0, 1, 1, 0, c_white, pausealpha);
}
else
{
	if surface_exists(pausesurf)
		surface_free(pausesurf);
	bgs = [];
}
