function scr_panicbg_start() {
	//DDP This script is run every time the first background starts to draw
	if !check_shaders()
		exit;
	
	if !variable_global_exists("panicbg_surface") or !surface_exists(global.panicbg_surface) {
		global.panicbg_surface = surface_create(__view_get( e__VW.WView, 0 ) + 128, __view_get( e__VW.HView, 0 ) + 128)
	}
	global.panicbg_width = 960;

	if event_type == ev_draw and event_number == 0 {
		// Render all background layers to panicbg_surface instead of application_surface
		surface_set_target(global.panicbg_surface);
		draw_clear_alpha(c_black, 0);
		
		// Offset each layer to account for scrolling
		var _cam_x = camera_get_view_x(view_camera[0])
		var _cam_y = camera_get_view_y(view_camera[0])
		
		var l = layer_get_all();
		for (var i = 0; i < array_length(l); i++;)
		{
			var layers_e = layer_get_all_elements(l[i]);
			for (var j = 0; j < array_length(layers_e); j++)
			{
				// backgrounds
				if layer_get_element_type(layers_e[j]) == layerelementtype_background
				&& layer_get_depth(l[i]) >= 0
				{
					if layer_get_name(l[i]) != "Backgrounds_Ground1" && layer_get_name(l[i]) != "Backgrounds_Ground2"
					{
						layer_x(l[i], layer_get_x(l[i]) - _cam_x + 64)
						layer_y(l[i], layer_get_y(l[i]) - _cam_y + 64)
					}
					else
					{
						var xx = 0;
						var yy = 0;
						if instance_exists(obj_parrallax)
						{
							if layer_get_name(l[i]) == "Backgrounds_Ground1"
							{
								xx = obj_parrallax.ground1x;
								yy = obj_parrallax.ground1y;
							}
							else if layer_get_name(l[i]) == "Backgrounds_Ground2"
							{
								xx = obj_parrallax.ground2x;
								yy = obj_parrallax.ground2y;
							}
						}
						
						layer_x(l[i], layer_get_x(l[i]) - _cam_x + 64 + xx)
						layer_y(l[i], -_cam_y + 64 + yy);
					}
					global.panicbg_width = max(global.panicbg_width, sprite_get_width(layer_background_get_sprite(layers_e[j])));
				}
				break;
			}
		}
		
		/*
		// Get information about camera and layers
		var _cam_x = camera_get_view_x(view_camera[0])
		var _cam_y = camera_get_view_y(view_camera[0])
		var bg1 = layer_get_id("Backgrounds_1")
		var bg2 = layer_get_id("Backgrounds_2")
		var bg3 = layer_get_id("Backgrounds_3")

		// Offset each layer to account for scrolling
		layer_x(bg1, layer_get_x(bg1) - _cam_x + 64)
		layer_y(bg1, layer_get_y(bg1) - _cam_y + 64)
		layer_x(bg2, layer_get_x(bg2) - _cam_x + 64)
		layer_y(bg2, layer_get_y(bg2) - _cam_y + 64)
		layer_x(bg3, layer_get_x(bg3) - _cam_x + 64)
		layer_y(bg3, layer_get_y(bg3) - _cam_y + 64)
		*/
	}
}