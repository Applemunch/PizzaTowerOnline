// parallax
visible = global.snickrematch;

if visible
{
	var camx = camera_get_view_x(view_camera[0]);
	var camy = camera_get_view_y(view_camera[0]);

	x = xstart + (camx * 0.1);
	y = ystart + (camy * 0.1);
}