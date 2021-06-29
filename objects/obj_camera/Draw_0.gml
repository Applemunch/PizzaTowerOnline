if room == custom_lvl_room or room == editor_entrance exit;
if !(instance_exists(obj_wc) && obj_wc.WC_oobcam)
{
	draw_set_color(c_black);

	var cam_x = camera_get_view_x(view_camera[0]) - 50;
	var cam_y = camera_get_view_y(view_camera[0]) - 50;
	var cam_w = camera_get_view_width(view_camera[0]) + 50;
	var cam_h = camera_get_view_height(view_camera[0]) + 50;

	draw_rectangle(-abs(cam_x), -abs(cam_y), cam_x + cam_w, -1, false);
	draw_rectangle(-abs(cam_x), -abs(cam_y), -1, cam_y + cam_h, false);
	draw_rectangle(room_width, -abs(cam_y), cam_x + cam_w, cam_y + cam_h, false);
	draw_rectangle(-abs(cam_x), room_height, cam_x + cam_w, cam_y + cam_h, false);
}

// golf camera icon
var _x, _y, _an;
while !ds_queue_empty(edge_indicator)
{
    _x = ds_queue_dequeue(edge_indicator);
    _y = ds_queue_dequeue(edge_indicator);
    _an = ds_queue_dequeue(edge_indicator);
	
	if instance_exists(player)
	{
		var spr_arrow = spr_peppinoicon;
		switch player.character
		{
			case "N":
				spr_arrow = spr_noiseicon;
				break;
			case "S":
				spr_arrow = spr_snickicon;
				break;
			case "V":
				spr_arrow = spr_vigilanteicon;
				break;
			case "SP":
				spr_arrow = spr_pizzelleicon;
				break;
			case "G":
				spr_arrow = spr_gladeicon;
				break;
		}
		
		draw_set_colour(pal_swap_get_pal_color(player.spr_palette, player.paletteselect, 1));
		draw_arrow(_x, _y, _x + lengthdir_x(56, _an), _y + lengthdir_y(56, _an), 12);
	
		pal_swap_set(player.spr_palette, player.paletteselect, false);
		draw_sprite_ext(spr_arrow, 0, _x, _y, 1, 1, 0, c_white, 1);
		pal_swap_reset();
	}
}