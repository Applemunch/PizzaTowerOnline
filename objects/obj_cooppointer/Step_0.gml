var _l = camera_get_view_x(view_camera[0]);
var _t = camera_get_view_y(view_camera[0]);
var _r = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
var __b = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
var _edge_x = camera_get_view_width(view_camera[0]) / 2 - 32;  //change constant "32" to change arrow dist from edge of view (in room pixels)
var _edge_y = camera_get_view_height(view_camera[0]) / 2 - 32;  //change constant "32" to change arrow dist from edge of view (in room pixels)
var _view_center_x = (_l + _r)/2;
var _view_center_y = (_t + __b)/2;
var _x1, _y1, _x2, _y2;
with (playerid) {
    if (!collision_rectangle(_l,_t,_r,__b,id,0,0)) {
        _x1 = (x - _view_center_x);
        _y1 = (y - _view_center_y);
        if abs(_x1 / _edge_x) > abs(_y1 / _edge_y) { _x2 = sign(_x1) * _edge_x; _y2 = _x2 / _x1 * _y1; } 
        else { _y2 = sign(_y1) * _edge_y; _x2 = _y2 / _y1 * _x1; }
        ds_queue_enqueue(other.edge_indicator,_view_center_x + _x2);
        ds_queue_enqueue(other.edge_indicator,_view_center_y + _y2);
        ds_queue_enqueue(other.edge_indicator,point_direction(0,0,_x1,_y1));
    }
}


if obj_player1.spotlight = true
playerid = obj_player2

if obj_player1.spotlight = false
playerid = obj_player1

if playerid.character = "N"
spr_arrow = spr_noiseicon
else
spr_arrow = spr_peppinoicon
