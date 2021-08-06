application_surface_draw_enable(true)

// bind positions
gms_show_set_position(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0));
gms_chat_bind_pos(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) - 100);

draw_set_alpha(1);
gms_draw();

if global.__chat
{
	minichatfade = 0;
	
	gms_chat_set_font(global.font_small);
	gms_chat_colors(c_white, c_black, 0.5);
	
	draw_set_alpha(0.75);
	draw_rectangle_color(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) - 100, __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0), c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	
	draw_set_font(global.font_small);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) - 50, lang_string("online.chat"));
	
	draw_set_halign(fa_left);
	draw_set_halign(fa_top);
}
else
{
	global.__chat_typing = false;
	global.__chat_openani = 0;
	
	if global.minichat
	{
		minichatfade--;
		with obj_player1
		{
			if abs(hsp) > 1
				other.minichatfade = room_speed * 2;
		}
		
		gms_chat_bind_pos(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) - 200, __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) - (960 / 2), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0));
		
		draw_set_alpha(0.5);
		if minichatfade <= 0
		{
			draw_rectangle_color(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) - 200, __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) - (960 / 2), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0), c_black, c_black, c_black, c_black, false);
			draw_set_alpha(1);
		}
		
		#region minichat
	
		var _y, _i, _t, __scl;
		_y = global.__chat_y2;
		
		draw_set_color(global.__chat_bgcol);
	    draw_set_font(global.__chat_font);
		
        draw_set_color(global.__chat_textcol);
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
		
        for(_i = gms_chat_num() - 1; _i >= 0 && _y > global.__chat_y1; _i -= 1)
        {
            draw_set_color(gms_chat_get_color(_i))
            
            var _snder;
            if(gms_chat_get_sendername(_i) != "")
            {
                _snder = gms_chat_get_sendername(_i) + ": ";
            }
			else {
                _snder = "";
            }
            
            _t = string_replace_all(gms_chat_get_text(_i), "#", "\\#");
            _y -= string_height_ext(_snder + _t, -1, global.__chat_x2 - global.__chat_x1);
            
            if(_y >= global.__chat_y1 + 5)
            {
                __scl = 1;
            }else{
                __scl = 1 - (global.__chat_y1 - _y) / string_height_ext(_t, -1, global.__chat_x2 - global.__chat_x1);
                _y += string_height_ext(_t + "xXgYg", -1, global.__chat_x2 - global.__chat_x1) * (1 - __scl)
            }
            
            if(script_exists(global.__chat_colorscript) && global.__chat_colorscript != -1)
            {
                //x, y, username, userid, message, width, yscale, color
                script_execute(global.__chat_colorscript, global.__chat_x1 + 5, max(_y, global.__chat_y1), gms_chat_get_sendername(_i), gms_chat_get_sender(_i), _t, global.__chat_x2 - global.__chat_x1, __scl, gms_chat_get_color(_i))
            }else{
                draw_text_ext_transformed(global.__chat_x1 + 5, max(_y, global.__chat_y1),_snder + _t, -1, global.__chat_x2 - global.__chat_x1, 1, __scl, 0);
            }
        }
	
		#endregion
	}
	draw_set_alpha(1);
}