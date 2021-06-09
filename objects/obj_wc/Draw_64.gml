/// @description world control draw gui
if live_call() return live_result;

// dragging text
draw_set_font(global.font_small);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_color(c_white);

if instance_exists(WC_dragobj)
{
	// dragging
	draw_set_color(c_white);
	draw_text(display_get_gui_width() / 2, 0, "Dragging " + object_get_name(WC_dragobj.object_index));
}

if instance_exists(WC_fakedragobj)
{
	// alt drag
	draw_set_color(merge_colour(c_aqua, c_white, 0.75));
	draw_text(display_get_gui_width() / 2, 0, "Dragging " + object_get_name(WC_fakedragobj.object_index));
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
	"\nfps: " + string(fps) + " objects: " + string(instance_number(all)));
	
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
		    draw_text(display_get_gui_width(), 4 + i, "No variables");
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
	    draw_text_ext(display_get_gui_width() / 2, display_get_gui_height() - 4, "global." + WC_varmonitor + ": " + string_replace(string(variable_global_get(WC_varmonitor)), (WC_swapconsolefont ? "" : "-"), "M"), 20, display_get_gui_width() - 4);
	else
	    draw_text_ext(display_get_gui_width() / 2, display_get_gui_height() - 4, object_get_name(WC_varobj.object_index) + "." + WC_varmonitor + ": " + string_replace(string(variable_instance_get(WC_varobj, WC_varmonitor)), (WC_swapconsolefont ? "" : "-"), "M"), 20, display_get_gui_width() - 4);
    
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
	draw_text_ext(4, WC_consolebottom - 20, (WC_consoletext == "" ? "Type a valid command..." : WC_consoletext), 20, display_get_gui_width() - 4);
	
	// poppin line
	if WC_drawline
		draw_rectangle(6 + string_width(WC_consoletext), WC_consolebottom - 20, 6 + string_width(WC_consoletext) + 1, WC_consolebottom - 4, false);
}

// asset list finder thing
if WC_assetfinder > -1
{
	var go = false;
	
	// console box
	draw_set_colour(WC_consolecolor);
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, 960, 540, 0);
	draw_set_alpha(1);
	
	// pt exclusive
	draw_set_font(WC_swapconsolefont ? font0 : global.font_small);
	
	// asset finder 2000
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	if WC_assetfinder == 0
		draw_text_transformed(display_get_gui_width() / 2, 32, "ROOM FINDER 2000", 2, 2, 0);
	if WC_assetfinder == 1
		draw_text_transformed(display_get_gui_width() / 2, 32, "OBJECT FINDER 2000", 2, 2, 0);
	
	// move selection
	WC_consolescroll = clamp(WC_consolescroll
	+ -mouse_wheel_up() * 3 + mouse_wheel_down() * 3,
	0, ds_list_size(WC_assetlist) - 3);
	
	WC_assetsel = clamp(WC_assetsel
	+ -keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down),
	0, ds_list_size(WC_assetlist) - 1);
	
	// draw the assets
	for(var i = WC_consolescroll; i < ds_list_size(WC_assetlist); i++)
	{
		draw_set_colour(c_silver);
		
		var cony = 96 + ((i - WC_consolescroll) * 16);
		if cony >= display_get_gui_height()
			break;
		
		var yy = (window_mouse_get_y() / window_get_height()) * 540;
		var xx = (window_mouse_get_x() / window_get_width()) * 960;
		var str = string(ds_list_find_value(WC_assetlist, i));
		
		// check if mouse hovering
		if point_in_rectangle(xx, yy, (960 / 2) - (string_width(str) / 2), cony + 2, (960 / 2) + (string_width(str) / 2), cony + 14)
		{
			WC_assetsel = i;
			if mouse_check_button_pressed(mb_left)
				go = true;
		}
		else if (WC_assetsel == i && cony >= display_get_gui_height() - 32)
		&& (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down))
			WC_consolescroll += 1;
		
		if WC_assetsel == i
			draw_set_colour(c_red);
		draw_text(display_get_gui_width() / 2, cony, str);
	}
	if WC_assetsel < WC_consolescroll
	{
		if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)
			WC_consolescroll = WC_assetsel;
		else
			WC_assetsel = WC_consolescroll;
	}
	
	if keyboard_check_pressed(vk_enter)
		go = true;
	
	// select
	if go
	{
		var selected = ds_list_find_value(WC_assetlist, WC_assetsel);
		if WC_assetfinder == 0
		{
			audio_stop_all();
			scr_wcevaluate("room " + selected);
		}
		if WC_assetfinder == 1
			scr_wcevaluate("object " + selected);
		
		WC_assetfinder = -1;
		ds_list_destroy(WC_assetlist);
		keyboard_clear(vk_enter);
	}
	
	// exit out
	if keyboard_check_pressed(vk_escape)
	{
		WC_assetfinder = -1;
		ds_list_destroy(WC_assetlist);
		keyboard_clear(vk_escape);
	}
}