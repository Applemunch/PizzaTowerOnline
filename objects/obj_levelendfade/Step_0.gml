fade += 0.01;
if fade >= 2
{
	global.pizzacoinstart = global.pizzacoin;
	
	scr_playerreset()
	obj_player1.state = states.normal
	obj_player1.targetDoor = "A"
	room = hub_room1
}

camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) - 1);