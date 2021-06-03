// parallax
visible = global.snickrematch;
if visible
{
	var camx = camera_get_view_x(view_camera[0]);
	var camy = camera_get_view_y(view_camera[0]);

	x = floor(xstart + (camx * 0.025));
	y = floor(ystart + (camy * 0.025));
}