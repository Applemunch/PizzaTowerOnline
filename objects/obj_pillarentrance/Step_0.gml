if global.panic
	sprite_index = spr_entrancepillarpanic

// parallax
var camx = camera_get_view_x(view_camera[0]);
var camy = camera_get_view_y(view_camera[0]);

x = xstart + (camx * 0.05);
y = ystart + (camy * 0.05);