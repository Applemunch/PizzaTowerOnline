function scr_panicbg_end() {
	//DDP This script is run after the last background element has been drawn
	if !check_shaders()
		exit;
	
	if event_type == ev_draw and event_number == 0
	{
		// demo 3 stuff
		gpu_set_blendenable(false)
	    gpu_set_colorwriteenable(false, false, false, true)
	    draw_rectangle(-192, -192, __view_get(e__VW.WView, 0) + 192, __view_get(e__VW.HView, 0) + 192, 0)
	    gpu_set_blendenable(true)
	    gpu_set_colorwriteenable(true, true, true, true)
	
		// Set panic background shader and render to application_surface
		surface_reset_target()
		shader_set(shd_panicbg)
	
		//DDP Uncomment this to test how full intensity looks
		//global.wave = global.maxwave
		
		// Set panic intensity in shader
		var panic_id = shader_get_uniform(shd_panicbg, "panic")
		shader_set_uniform_f(panic_id, global.wave / global.maxwave)
		
		// Set current time in shader
		var time_id = shader_get_uniform(shd_panicbg, "time")
		shader_set_uniform_f(time_id, current_time / (global.panicbg_width + 40))
		
		// Set amplitude
		var mult_id = shader_get_uniform(shd_panicbg, "mult");
		shader_set_uniform_f(mult_id, 1);
		
		// Draw panicbg_surface and reset to application surface
		var x1 = camera_get_view_x(view_camera[0]) - 64;
		var y1 = camera_get_view_y(view_camera[0]) - 64;
		var x2 = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 64;
		var y2 = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 64;
		
		draw_surface_ext(global.panicbg_surface, x1, y1, 1, 1, camera_get_view_angle(view_camera[0]), -1, 1)
		shader_reset()
		
		if obj_panicdebris.flasha > 0
		{
			draw_set_alpha(obj_panicdebris.flasha);
			draw_set_colour(c_white);
			draw_rectangle(x1, y1, x2, y2, false);
			draw_set_alpha(1);
		}
	}
}