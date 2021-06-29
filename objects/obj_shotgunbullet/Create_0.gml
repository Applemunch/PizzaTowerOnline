image_speed = 0.5
image_xscale = obj_player1.xscale

spd = image_xscale * 25
spdh = 0

pistol = false;
playerid = obj_player1;

shotgun = false;

oob = false;
if !point_in_camera(x, y, view_camera[0])
	oob = true;