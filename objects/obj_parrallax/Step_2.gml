var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);

var _cam_x2 = _cam_x;
var _cam_y2 = _cam_y;

if instance_exists(obj_camera) && instance_exists(obj_player1)
&& obj_camera.bound_camera && instance_exists(obj_player1.cam)
{
	_cam_x2 -= obj_player1.cam.x;
	_cam_y2 -= obj_player1.cam.y;
}

layer_x("Backgrounds_1", _cam_x * 0.25);
layer_y("Backgrounds_1", _cam_y * 0.25);
layer_x("Backgrounds_2", _cam_x * 0.15);
layer_y("Backgrounds_2", _cam_y * 0.15);
layer_x("Backgrounds_3", _cam_x * 0.05);
layer_y("Backgrounds_3", _cam_y * 0.05);

layer_x("Backgrounds_fore1", _cam_x * -0.1);
layer_y("Backgrounds_fore1", _cam_y * -0.1);

layer_x("Backgrounds_Ground1", _cam_x * 0.25);
layer_x("Backgrounds_Ground2", _cam_x * 0.25);

layer_x("Backgrounds_H1", _cam_x * 0.25);
layer_y("Backgrounds_H1", _cam_y);

if layer_exists("Backgrounds_scroll")
{
	layer_x("Backgrounds_scroll", (_cam_x * 0.25) + bgscrollx);
	layer_y("Backgrounds_scroll", (_cam_y * 0.25) + bgscrolly);
	bgscrollx = (bgscrollx + layer_get_hspeed("Backgrounds_scroll")) % (sprite_get_width(layer_background_get_sprite(layer_background_get_id("Backgrounds_scroll"))));
	bgscrolly = (bgscrolly + layer_get_vspeed("Backgrounds_scroll")) % (sprite_get_height(layer_background_get_sprite(layer_background_get_id("Backgrounds_scroll"))));
}

if layer_exists("Backgrounds_oldscroll")
{
	layer_x("Backgrounds_oldscroll", bgscroll5x);
	layer_y("Backgrounds_oldscroll", bgscroll5y);
	bgscroll5x = (bgscroll5x + layer_get_hspeed("Backgrounds_oldscroll")) % (sprite_get_width(layer_background_get_sprite(layer_background_get_id("Backgrounds_oldscroll"))));
	bgscroll5y = (bgscroll5y + layer_get_vspeed("Backgrounds_oldscroll")) % (sprite_get_height(layer_background_get_sprite(layer_background_get_id("Backgrounds_oldscroll"))));
}

#region pinpan moment

if layer_exists("Backgrounds_steamcc1")
{
	layer_x("Backgrounds_steamcc1", (_cam_x * 0.95) + bgscroll2x);
	layer_y("Backgrounds_steamcc1", (_cam_y * 0.95) + bgscroll2y);
	bgscroll2x = (bgscroll2x + layer_get_hspeed("Backgrounds_steamcc1")) % (sprite_get_width(layer_background_get_sprite(layer_background_get_id("Backgrounds_steamcc1"))));
	bgscroll2y = (bgscroll2y + layer_get_vspeed("Backgrounds_steamcc1")) % (sprite_get_height(layer_background_get_sprite(layer_background_get_id("Backgrounds_steamcc1"))));
}

if layer_exists("Backgrounds_steamcc2")
{
	layer_x("Backgrounds_steamcc2", (_cam_x * 0.8) + bgscroll3x);
	layer_y("Backgrounds_steamcc2", (_cam_y * 0.8) + bgscroll3y);
	bgscroll3x = (bgscroll3x + layer_get_hspeed("Backgrounds_steamcc2")) % (sprite_get_width(layer_background_get_sprite(layer_background_get_id("Backgrounds_steamcc2"))));
	bgscroll3y = (bgscroll3y + layer_get_vspeed("Backgrounds_steamcc2")) % (sprite_get_height(layer_background_get_sprite(layer_background_get_id("Backgrounds_steamcc2"))));
}

if layer_exists("Backgrounds_steamcc3")
{
	layer_x("Backgrounds_steamcc3", (_cam_x * -0.25) + bgscroll4x);
	layer_y("Backgrounds_steamcc3", (room_height - 570) + ((room_height - (_cam_y + _camh)) * 0.25));
	bgscroll4x = (bgscroll4x + layer_get_hspeed("Backgrounds_steamcc3")) % 1280;
}

if layer_exists("Backgrounds_steamcc4")
{
	layer_x("Backgrounds_steamcc4", _cam_x * 0.4);
	layer_y("Backgrounds_steamcc4", (room_height - 540) + ((room_height - (_cam_y + _camh)) * -0.4));
}

#endregion

layer_x("Backgrounds_sky",  _cam_x * 0.85);
layer_y("Backgrounds_sky",  _cam_y * 0.85);
layer_x("Backgrounds_sky2", _cam_x);
layer_y("Backgrounds_sky2", _cam_y);
layer_x("Backgrounds_sky3", _cam_x * 0.95);
layer_y("Backgrounds_sky3", _cam_y * 0.95);

var roomwidth = room_width;
var roomheight = room_height;

if room == custom_lvl_room && instance_exists(obj_player1)
&& instance_exists(obj_camera) && obj_camera.bound_camera
{
	roomwidth = obj_player1.cam_width;
	roomheight = obj_player1.cam_width;
}

if layer_exists("Backgrounds_still1")
{
	layer_x("Backgrounds_still1", _cam_x - clamp(_cam_x2 * 0.15 * (960 / roomwidth), 0, sprite_get_width(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_still1")))) - 960));
	layer_y("Backgrounds_still1", _cam_y - clamp(_cam_y2 * 0.15 * (540 / roomheight), 0, sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_still1")))) - 540));
}
if layer_exists("Backgrounds_stillH1")
{
	layer_x("Backgrounds_stillH1", _cam_x * 0.25);
	layer_y("Backgrounds_stillH1", _cam_y - clamp(_cam_y2 * 0.15 * (540 / roomheight), 0, sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_stillH1")))) - 540));
}
if layer_exists("Backgrounds_stillH2")
{
	layer_x("Backgrounds_stillH2", _cam_x * 0.35);
	layer_y("Backgrounds_stillH2", _cam_y - clamp(_cam_y2 * 0.15 * (540 / roomheight), 0, sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_stillH2")))) - 540));
}
if layer_exists("Backgrounds_stillH3")
{
	layer_x("Backgrounds_stillH3", _cam_x * 0.95);
	layer_y("Backgrounds_stillH3", _cam_y - clamp(_cam_y2 * 0.15 * (540 / roomheight), 0, sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_stillH3")))) - 540));
}

if layer_exists("Backgrounds_stillscroll")
{
	layer_x("Backgrounds_stillscroll", (_cam_x * 0.25) + scroll);
	scroll++;
	if scroll >= sprite_get_width(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_stillscroll"))))
		scroll = 0;
	layer_y("Backgrounds_stillscroll", _cam_y);
}