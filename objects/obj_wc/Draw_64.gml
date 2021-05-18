/// @description world control draw gui
// dragging text
draw_set_font(global.font_small);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_color(c_white);

if instance_exists(WC_dragobj)
{
	// dragging
	draw_set_color(c_white);
	draw_text(960 / 2, 0, "Dragging " + object_get_name(WC_dragobj.object_index));
}

if instance_exists(WC_fakedragobj)
{
	// alt drag
	draw_set_color(merge_colour(c_aqua, c_white, 0.75));
	draw_text(960 / 2, 0, "Dragging " + object_get_name(WC_fakedragobj.object_index));
}

// tactical hud
if WC_debuginfo
{
	draw_set_halign(fa_left);
	draw_set_font(WC_swapconsolefont ? font0 : global.font_small);
	var i = 0;
	draw_set_halign(fa_left);
	draw_set_colour(c_white);
	
	draw_text(4, 24 + i, "room: " + string(room) + " " + room_get_name(room) + 
	"\nfps: " + string(fps) + " objects: " + string(instance_count));
	
	if instance_exists(WC_debugselected) or WC_debugselected == global
	{
		if WC_debugselected != global
		{
		    var str = "\n\n\nSelected " + object_get_name(WC_debugselected.object_index) + 
			"\nid: " + string(WC_debugselected.id) + 
			"\nx: " + string_replace(string(WC_debugselected.x), (WC_swapconsolefont ? "" : "-"), "M") + 
			"\ny: " + string_replace(string(WC_debugselected.y), (WC_swapconsolefont ? "" : "-"), "M") + 
			"\nsprite_index: " + string(WC_debugselected.sprite_index) + 
			" (" + sprite_get_name(WC_debugselected.sprite_index) + ")" + 
			"\nmask_index: " + string_replace(string(WC_debugselected.mask_index), "-1", "none") + 
			(WC_debugselected.mask_index == -1 ? "" : (" (" + sprite_get_name(WC_debugselected.mask_index)) + ")") + 
			"\nimage_index: " + string(WC_debugselected.image_index) +
			"\nimage_number: " + string(WC_debugselected.image_number) + 
			"\nimage_xscale: " + string(WC_debugselected.image_xscale) +
			"\nimage_yscale: " + string(WC_debugselected.image_yscale);
            
			for (var c = 0; c <= 11; c++)
		    {
		        if WC_debugselected.alarm[c] > -1
		            str += "\nalarm " + string(c) + ": " + string(WC_debugselected.alarm[c]);
		    }
            
			draw_text(4, 24 + i, str);
		}
		else
		    draw_text(4, 24 + i, "\n\n\nShowing global variables");
		
		draw_set_halign(fa_right);
		var objvars = variable_instance_get_names(WC_debugselected);
		
		if array_length_1d(objvars) == 0
		    draw_text(960, 4 + i, "No variables");
		else
		{
		    WC_debugvarstart = clamp(WC_debugvarstart, 0, max(array_length_1d(objvars) - 32, 0));
		    for (var b = WC_debugvarstart; b < min(WC_debugvarstart + 33, array_length_1d(objvars)); b++)
		    {
				var getvar;
		        if WC_debugselected == global
		            getvar = variable_global_get(objvars[b]);
		        else
		            getvar = variable_instance_get(WC_debugselected, objvars[b]);
				
				var todraw;
		        if is_array(getvar)
		        {
					draw_set_colour(merge_colour(c_white, c_yellow, 0.5));
		            todraw = "ARRAY";
		        }
		        else
		        {
					draw_set_colour(c_white);
					if string_char_at(string(getvar), 1) == "-"
						draw_set_colour(merge_colour(c_white, c_red, 0.5));
		            todraw = string_replace(string(getvar), (WC_swapconsolefont ? "" : "-"), "M");
		        }
				
		        todraw = string_replace_all(todraw, "\n", "#");
		        if b <= 32 + WC_debugvarstart
		            draw_text(956, (((b - WC_debugvarstart) * 16) + 4) + i, objvars[b] + ": " + todraw);
		    }
				
			if keyboard_check_pressed(vk_pageup)
			{
			    WC_debugvarstart -= 32;
			    if WC_debugvarstart < 0
			        WC_debugvarstart = 0;
			}
			if keyboard_check_pressed(vk_pagedown)
			{
			    WC_debugvarstart += 32;
			    if WC_debugvarstart > array_length_1d(objvars) - 32
			        WC_debugvarstart = array_length_1d(objvars) - 32;
			}
		}
	}
	else
		WC_debugselected = noone;
}

if WC_varobj != undefined && (instance_exists(WC_varobj) or WC_varobj == global)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_colour(c_white);
	
	draw_set_font(WC_swapconsolefont ? font0 : global.font_small);
	
	if WC_varobj == global
	    draw_text_ext(960 / 2, 540 - 4, "global." + WC_varmonitor + ": " + string_replace(string(variable_global_get(WC_varmonitor)), (WC_swapconsolefont ? "" : "-"), "M"), 20, 960 - 4);
	else
	    draw_text_ext(960 / 2, 540 - 4, object_get_name(WC_varobj.object_index) + "." + WC_varmonitor + ": " + string_replace(string(variable_instance_get(WC_varobj, WC_varmonitor)), (WC_swapconsolefont ? "" : "-"), "M"), 20, 960 - 4);
    
	draw_set_valign(fa_top);
}
else if WC_varobj != undefined
{
	// failsafe
	WC_varobj = undefined;
	WC_varmonitor = undefined;
}

// the console
if WC_consoleopen
{
	// pt exclusive
	draw_set_font(WC_swapconsolefont ? font0 : global.font_small);
	
	// console box
	draw_set_colour(WC_consolecolor);
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, 960, WC_consolebottom, 0);
	draw_set_alpha(1);
	
	// text
	draw_set_halign(fa_left);
	draw_set_colour(c_silver);
	
	for (i = WC_consolescroll; i < min(ds_list_size(WC_consolelist), ceil(WC_consolebottom / 20) + WC_consolescroll); i++)
	{
		var yy = (window_mouse_get_y() / window_get_height()) * 540;
		var cony = WC_consolebottom - (20 * (i + 1 - WC_consolescroll));
		var context = string(ds_list_find_value(WC_consolelist, i));
		
		draw_set_colour(c_silver);
		if string_char_at(context, 1) == "%"
		{
			// check if mouse hovering
			if (yy >= cony - 20 && yy < cony)
			{
				draw_set_colour(c_red);
				if mouse_check_button_pressed(mb_left)
				{
					// repeat command
					WC_dragobj = noone;
					WC_fakedragobj = noone;
					WC_consoleenter = string_replace(context, "%...", "");
				}
			}
			
			context = string_replace(context, "%...", "...");
		}
		
		//if !WC_swapconsolefont
		//	context = string_replace_all(context, "-", "M");
			
	    draw_text_ext(4, cony - 20, context, 20, 960 - 4); // draw the logs
	}
	
	// write text
	draw_set_colour(c_white);
	draw_text_ext(4, WC_consolebottom - 20, (WC_consoletext == "" ? "Type a valid command..." : WC_consoletext), 20, 960 - 4);
	
	// poppin line
	if WC_drawline
		draw_rectangle(6 + string_width(WC_consoletext), WC_consolebottom - 20, 6 + string_width(WC_consoletext) + 1, WC_consolebottom - 4, false);
}