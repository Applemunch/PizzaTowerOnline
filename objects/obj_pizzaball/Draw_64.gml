var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

if state == states.golf
{
    var _xx = lengthdir_x(128, m_angle)
    var _yy = lengthdir_y(128, m_angle)
    draw_sprite(spr_ball_move, 0, (player.x + _xx) - cx, (player.y + _yy) - cy)
	
    if meter
    {
        var _mt = m_meter * 100;
        draw_healthbar(
			player.x - (50 * image_xscale) - cx, 
			player.y - 32 - cy, 
			player.x - (40 * image_xscale) - cx, 
			player.y + 32 - cy, 
			_mt, c_black, c_blue, c_red, 3, true, true
		);
    }
}