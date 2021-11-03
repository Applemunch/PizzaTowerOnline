function scr_deltamessage()
{
	var _alp = 0;
    if (current_time - last_chat_time) < 300
        _alp = (current_time - last_chat_time) / 300;
	else if (current_time - last_chat_time) < 8000
        _alp = 1;
	else if (current_time - last_chat_time) < 9000
        _alp = 1 - ((current_time - last_chat_time) - 8000) / 1000;
	
    if _alp != 0
    {
        draw_set_alpha(_alp);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_font(global.font_small);
			
		var message = last_chat_message;
		
	    var _w = max(0.01, min(string_width(message), room_width / 4));
	    _w = string_width_ext((message), -1, _w);
	    _h = string_height_ext((message), -1, _w);
		
		var xdraw = sus_x + 47 + 600;
		var ydraw = sus_y + 290;
		
		draw_set_colour(c_black);
		draw_roundrect(xdraw - _w / 2 - 10 - 1, ydraw - _h + sprite_get_bbox_top(sus_sprite) - 16 - 80 - 1, xdraw + _w / 2 + 10 + 1, ydraw + sprite_get_bbox_top(sus_sprite) - 6 - 80 + 1, 0);
		draw_roundrect(xdraw - _w / 2 - 10 + 4, ydraw - _h + sprite_get_bbox_top(sus_sprite) - 16 - 80 + 4, xdraw + _w / 2 + 10 + 4, ydraw + sprite_get_bbox_top(sus_sprite) - 6 - 80 + 4, 0);
        draw_set_color(c_white);
        draw_roundrect(xdraw - _w / 2 - 10, ydraw - _h + sprite_get_bbox_top(sus_sprite) - 16 - 80, xdraw + _w / 2 + 10, ydraw + sprite_get_bbox_top(sus_sprite) - 6 - 80, 0);
        draw_set_color(c_white);
        draw_text_ext(floor(xdraw), floor(ydraw - _h + sprite_get_bbox_top(sus_sprite) - 8 - 80), string(message), -1, _w);
			
		draw_set_halign(fa_left);
    }
	
	/*
	*/
}