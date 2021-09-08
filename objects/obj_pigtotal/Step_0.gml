// hide if player overlapping
var change_pos = false;
	
if instance_exists(obj_player1)
&& obj_player1.x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 230
&& obj_player1.y > camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 190
	change_pos = true;
with obj_player1
{
	if place_meeting(x, y, obj_startgate) && global.gameplay != 0
		change_pos = true;
}
if instance_exists(obj_dialoguebox)
	change_pos = true;

if global.gameplay != 0 or instance_exists(obj_dialoguebox)
{
	var spd = 15;
	if change_pos
		hud_posY = Approach(hud_posY, 200, spd);
	else
		hud_posY = Approach(hud_posY, 0, spd);
}
else
{
	if change_pos
		image_alpha = 0.5;
	else
		image_alpha = 1;
}

// invisible if chat is open
if instance_exists(obj_gms) && global.__chat
	visible = false;
else
	visible = false;