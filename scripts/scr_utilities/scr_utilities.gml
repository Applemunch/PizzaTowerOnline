function point_in_camera(x, y, cam)
{
	var camx = camera_get_view_x(cam);
	var camy = camera_get_view_y(cam);
	var camw = camera_get_view_width(cam);
	var camh = camera_get_view_height(cam);
	return point_in_rectangle(x, y, camx, camy, camx + camw, camy + camh);
}

function increase_combo()
{
	if global.gameplay != 0
	{
		global.combo += 1
		global.combotime = 60;
		global.heattime = 60;
		global.style += 3 + global.combo;
	}
}