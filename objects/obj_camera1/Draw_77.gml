
//DDP Raise this value to change how intense the blur is
//#macro MAX_BLUR 0.66

//DDP Generate crazy motion blur effect
//if	(global.panic = true) && global.panicbg {
//	application_surface_draw_enable(false)
//	
	// Get dimensions of window and center application
//	var winh = window_get_height()
//	var winw = window_get_width()
//	var apph = window_get_height()
//	var appw = apph * (960 / 540)
//	var appx = (winw - appw) / 2
//	var appa = lerp(1.0, 1.0 - MAX_BLUR, global.wave / global.maxwave)
//	draw_surface_stretched_ext(application_surface, appx, 0, appw, apph, c_white, appa)
//} else {
	// Just draw normally
//	application_surface_draw_enable(true)
//}