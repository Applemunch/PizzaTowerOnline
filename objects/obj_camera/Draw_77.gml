//DDP Raise this value to change how intense the blur is
if live_call() return live_result;
#macro MAX_BLUR 0.66

var drawshit = false;
if global.panic or blurpreview
{
	var ang = 0;
	if global.panictilt
	{
		drawshit = true;
		ang = (global.wave / global.maxwave) * 2.5;
	}
	
	//DDP Generate crazy motion blur effect
	var appa = 1;
	if global.panicmelt or blurpreview
	{
		drawshit = true;
		appa = max(lerp(1.0, 1.0 - MAX_BLUR, global.wave / global.maxwave), 0.01);
	}
}

if drawshit
{
	var winw = window_get_width();
	var apph = window_get_height();
	var appw = apph * (960 / 540);
	//var appx = (winw - appw) / 2;
	
	draw_set_colour(c_black);
	application_surface_draw_enable(false);
			
	var _c = dcos(ang);
	var _s = dsin(ang);
	var _x = appw / 2;  //surface origin x
	var _y = apph / 2;  //surface origin y
			
	var _xx = winw / 2 - _c * _x - _s * _y;
	var _yy = apph / 2 - _c * _y + _s * _x;
	
	if !global.panicmelt
		draw_rectangle(0, 0, winw, apph, false);
	draw_surface_ext(application_surface, _xx, _yy, (appw / 960) / 2, (apph / 540) / 2, ang, c_white, appa);
	draw_set_alpha(1);
	
	/*
	draw_set_colour(c_black);
	draw_rectangle(0, 0, appx, apph, false);
	draw_rectangle(appx + appw, 0, winw, apph, false);
	*/
}
else
	application_surface_draw_enable(true);