draw_set_colour(c_white);
switch menu
{
	case menutypes.menustart:
	{
		#region version number
		
		draw_set_font(global.font_small);
		draw_set_colour(c_white);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		//draw_text(4, 4, "works on v" + string(builtforv));
		
		#endregion
		#region black box
		
		draw_set_colour(c_black);
		draw_set_alpha(0.25);
		draw_rectangle(320, 0, 640, 540, false);
		draw_set_alpha(1);
		
		#endregion
		#region starting menu
		
		if draw_editorbutton(384, 200 + (!debug * 64), "ONLINE")
			menu = menutypes.menuonline;
		
		if debug
		{
			if draw_editorbutton(384, 200 + 64, "LOAD")
			{
				window_set_cursor(cr_default);
				var fileopen = get_open_filename_ext("Level File (*.ptlv)|*.ptlv|All Files (*.*)|*.*", "", "%localappdata%\\PizzaTower_GM2\\Levels\\", "Load Level");
				if fileopen != ""
				{
					window_set_cursor(cr_default);
					
					level_id = 1;
					
					var _buffer = buffer_load(fileopen);
					var _string = buffer_read(_buffer, buffer_string);
					buffer_delete(_buffer);
				
					level_string = _string;
					loading = false;
					
					scr_playerreset();
					room_goto(custom_lvl_room);
				}
				
				if instance_exists(obj_editor_cursor)
					window_set_cursor(cr_none);
			}
			
			if draw_editorbutton(384, 200 + 64 + 64, "BUILD")
			{
				/*
				window_set_cursor(cr_default);
				scr_playerreset();
				room = hub_outside2;
				obj_player1.targetDoor = "B";
				*/
				with obj_roomname
				{
					showtext = true;
					message = "UNFINISHED!!!";
					alarm[0] = 200;
				}
			}
		}
		
		if draw_editorbutton(384, 200 + 64 + 64 + (debug * 64), "BACK")
		{
			scr_playerreset();
			room = hub_outside2;
			obj_player1.targetDoor = "B";
		}
		
		#endregion
		break;
	}
	case menutypes.menuonline:
	{
		#region black box
		
		draw_set_colour(c_black);
		draw_set_alpha(0.25);
		draw_rectangle(320, 0, 640, 540, false);
		draw_set_alpha(1);
		
		#endregion
		#region online menu
		
		if debug
		{
			if draw_editorbutton(384, 200, "BROWSE")
			{
				menu = menutypes.levelbrowser;
				if paging_type != 0
				{
					page = 1;
					pagelast = 0;
				}
				paging_type = 0;
				scr_requestpage(page);
			}
			if draw_editorbutton(384, 200 + 64, "FEATURED")
			{
				menu = menutypes.levelbrowser;
				if paging_type != 1
				{
					page = 1;
					pagelast = 0;
				}
				paging_type = 1;
				scr_requestpage(page);
			}
		}
		
		var pto = false;
		if (instance_exists(obj_gms) && gms_info_isloggedin())
		or debug
		{
			pto = true;
			if draw_editorbutton(384, 200 + 64 + (debug * 64), "PTONLINE")
			{
				menu = menutypes.levelbrowser;
				paging_type = 3;
				scr_requestpage_alt(page);
			}
		}
		
		if draw_editorbutton(384, 200 + 64 + 64 + (pto * 64), "BACK")
			menu = menutypes.menustart;
		
		#endregion
		break;
	}
	
	case menutypes.levelbrowser:
	{
		#region black box
		
		draw_set_colour(c_black);
		draw_set_alpha(0.25);
		draw_rectangle(0, 0, 640, 540, false);
		draw_set_alpha(1);
		
		#endregion
		#region level browser
		
		if records != undefined
		{
			for(var i = 0; i < ds_list_size(records); i++)
			{
				var level = ds_list_find_value(records, i);
				var _id = ds_map_find_value(level, "id");
				
				var name = ds_map_find_value(level, "name");
				var upvotes = ds_map_find_value(level, "likes");
				var downvotes = ds_map_find_value(level, "dislikes");
				var author = ds_map_find_value(level, "author");
				//var userid = ds_map_find_value(level, "userid");
				
				draw_set_font(global.font_small);
				draw_set_colour(c_white);
			
				var yy = 38 + (i * 52) + yview;
			
				var sel = false;
	
				if mouse_x >= 56 && mouse_x <= 56 + 512
				&& mouse_y >= yy && mouse_y < yy + 52
				{
					sel = true;
		
					if mouse_check_button_pressed(mb_left) && sel != -1
					{
						records = undefined;
						menu = menutypes.leveldetails;
						level_id = _id;
						level_name = name;
						level_desc = ds_map_find_value(level, "description");
						level_author = author;
						
						level_string = undefined;
						
						if paging_type != 3
							scr_requestlevel(_id);
						else
							scr_requestlevel_alt(_id);
						break;
					}
				}
	
				draw_sprite(spr_editormenu_onlinelevel, sel, 56, yy);
			
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				draw_text(56 + 4, yy + 4, string(name));
			
				draw_set_valign(fa_bottom);
				draw_text(56 + 4, yy + 52 - 4, "ID: " + string(_id) + " LIKES: " + string(upvotes) + " DISLIKES: " + string(downvotes));
			
				draw_set_halign(fa_right);
				draw_text(56 + 512 - 5, yy + 52 - 4, "BY: " + string(author));
	
				//draw_set_valign(fa_top);
				//draw_text(56 + 512 - 5, yy + 4, "USERID: " + string(userid));
			
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
			}
		}
		
		// scrollbar
		if yviewmax <= -56
		{
			draw_sprite(spr_scrollbar, 0, 624, 25);
			draw_sprite(spr_scrollbar_button, scrolling, 624, 25 + ((yview / yviewmax) * 500));
		}
		
		// page show
		if pagelast != 0
		{
			draw_set_colour(c_white);
			
			draw_set_font(global.font_small);
			draw_set_colour(pagelast <= 1 ? c_ltgray : c_white);
			draw_set_halign(fa_right);
			draw_text(960 - 15, 16, "Page " + string(page) + " of " + string(pagelast));
			draw_set_halign(fa_left);
			
			// page buttons
			if page != pagelast
			{
				if draw_editorbutton(704, 388, "NEXT") && !loading
				{
					records = undefined;
					page++;
					scr_requestpage(page);
				}
			}
			
			if page > 1
			{
				if draw_editorbutton(704, 324, "PREV") && !loading
				{
					records = undefined;
					page--;
					scr_requestpage(page);
				}
			}
		}
		
		// search tool
		if paging_type != 1 && paging_type != 3
		{
			draw_set_colour(c_white);
			draw_rectangle(672, 42, 926, 72, false);
			draw_set_colour(c_black);
			draw_rectangle(672, 42, 926, 72, true);
		
			draw_set_font(font0);
			draw_set_halign(fa_left);
			draw_text(672 + 6, 42 + 6, string(searchstring) + (selectedsearch && textline ? "|" : ""));
		
			if !selectedsearch
			{
				textline = false;
				alarm[1] = -1;
			
				if mouse_check_button_pressed(mb_left)
				&& mouse_x >= 672 && mouse_y >= 42 && mouse_x < 926 && mouse_y < 72
				{
					keyboard_string = searchstring;
					textline = true;
					selectedsearch = true;
				}
			}
			
			if selectedsearch
			{
				if alarm[1] == -1
					alarm[1] = room_speed / 2;
			
				searchstring = keyboard_string;
				
				if mouse_check_button_pressed(mb_left)
				&& !(mouse_x >= 672 && mouse_y >= 42 && mouse_x < 926 && mouse_y < 72)
					selectedsearch = false;
			}
			
			// search button
			if searchstring != "" && (draw_editorbutton(704, 98, "SEARCH") or (selectedsearch && keyboard_check_pressed(vk_enter)))
			{
				// search
				page = 1;
				records = undefined;
				paging_type = 2;
				searchstring_real = searchstring;
				scr_requestpage(page);
			}
		}
		
		// go back
		if (draw_editorbutton(704, 458, "BACK") or (paging_type == 2 && searchstring == "" && draw_editorbutton(704, 98, "BACK"))) && !loading
		{
			if paging_type != 2
			{
				records = undefined;
				menu = menutypes.menuonline;
			}
			else
			{
				page = 1;
				searchstring = "";
				records = undefined;
				paging_type = 0;
				scr_requestpage(page);
			}
		}
		
		// upload level
		if paging_type == 3 && !loading
		{
			if draw_editorbutton(704, 64, "UPLOAD")
			{
				if debug
				{
					if global.auth == ""
					{
						records = undefined;
						menu = menutypes.login;
						searchstring = "";
					}
					else
					{
						// upload level dumbass
					}
				}
				else with obj_roomname
				{
					showtext = true;
					message = "UNFINISHED!!!";
					alarm[0] = 200;
				}
			}
		}
		
		#endregion
		break;
	}
	case menutypes.leveldetails:
	{
		#region black box
		
		draw_set_colour(c_black);
		draw_set_alpha(0.25);
		draw_rectangle(320, 0, 640, 540, false);
		if debug
			draw_rectangle(0, 540, 960, 540 * 2, false);
		draw_set_alpha(1);
		
		#endregion
		#region level details
		
		draw_set_colour(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		
		draw_set_font(global.bigfont);
		draw_text(960 / 2, 128, string_upper(string(level_name))); // level name
		
		draw_set_font(global.font_small);
		draw_text(960 / 2, 192, "By " + string(level_author)); // by whoever
		draw_text_ext(960 / 2, 256, string(level_desc), 18, 960 - 16); // description
		
		if level_string != undefined
		{
			// load level
			if draw_editorbutton(384, 296, "PLAY") && viewpos == 0
			{
				scr_playerreset();
				obj_player1.targetDoor = "A";
				room_goto(custom_lvl_room);
			}
			
			#region debug
			if debug
			{
				if draw_editorbutton(384, 360, "DOWNLOAD") && viewpos == 0
				{
					window_set_cursor(cr_default);
					var fileopen = get_save_filename_ext("Level File (*.ptlv)|*.ptlv|All Files (*.*)|*.*", level_name + ".ptlv", "%localappdata%\\PizzaTower_GM2\\Levels\\", "Download Level");
					if fileopen != ""
					{
						var filewrite = file_text_open_write(fileopen);
						file_text_write_string(filewrite, level_string);
						file_text_close(filewrite);
					
						showtext = true;
						message = "LEVEL DOWNLOADED!";
						alarm[0] = 200;
					}
					if instance_exists(obj_editor_cursor)
						window_set_cursor(cr_none);
				
					/*
					var file = file_text_open_write(level_name + ".ptlv");
					file_text_write_string(file, level_string);
					file_text_close(file);
				
					showtext = true;
					message = "LEVEL DOWNLOADED!";
					alarm[0] = 200;
					*/
				}
				
				if draw_editorbutton(384, 424, "DETAILS") && map != undefined
				{
					response = "";
					var first = ds_map_find_first(map);
					for (var i = 0; i < ds_map_size(map); i++)
					{
						response += "\n\"" + string(first) + "\": " + string_copy(string(map[?first]), 1, 200);
			
					    first = ds_map_find_next(map, first);
						if first == undefined
						{
							response += "\n";
							break;
						}
					}
					viewpos = 1;
				}
			}
			#endregion
		}
		
		if debug
		{
			if viewpos == 1
			{
				camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), lerp(camera_get_view_y(view_camera[0]), 540, 0.25));
			
				if draw_editorbutton(32, 540 + 32, "BACK")
				{
					alarm[0] = min(alarm[0], 1);
					viewpos = 0;
				}
			
				draw_set_colour(c_white);
				draw_set_font(global.font_small);
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				draw_text(960 / 2, 540 + 32, "CTRL C to copy full map");
			
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				draw_set_font(font0);
				draw_text(32, 540 + 32 + 48, response);
			
				if keyboard_check(vk_control) && keyboard_check_pressed(ord("C"))
				{
					clipboard_set_text(string(asyncresult));
					showtext = true;
					message = "COPIED";
					alarm[0] = room_speed * 2;
				}
			}
			if viewpos != 1
				camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), lerp(camera_get_view_y(view_camera[0]), 0, 0.25));
		}
		
		if draw_editorbutton(32, 32, "BACK") && viewpos == 0
		{
			level_string = undefined;
			menu = menutypes.levelbrowser;
			request = undefined;
			
			if records == undefined
			{
				if paging_type != 3 // normal
					scr_requestpage(page);
				else // alt
					scr_requestpage_alt(page);
			}
		}
		
		#endregion
		break;
	}
	
	case menutypes.login:
	{
		var lg_name = string_copy(gms_self_name(), 1, 30);
		if lg_name == "" && debug
			lg_name = "admin";
		
		#region black box
		
		draw_set_colour(c_black);
		draw_set_alpha(0.25);
		draw_rectangle(320, 0, 640, 540, false);
		draw_set_alpha(1);
		
		#endregion
		#region back
		
		if draw_editorbutton(32, 32, "BACK") && viewpos == 0
		{
			if registering
			{
				selectedpassword = false;
				registering = false;
				passconfirm1 = "";
			}
			else
			{
				level_string = undefined;
				menu = menutypes.levelbrowser;
				request = undefined;
			
				if records == undefined
				{
					if paging_type != 3 // normal
						scr_requestpage(page);
					else // alt
						scr_requestpage_alt(page);
				}
			}
		}
		
		#endregion
		#region username
		
		draw_set_colour(c_black);
		draw_rectangle(352, 176, 608, 208, false);
		draw_set_colour(c_gray);
		draw_rectangle(352 + 1, 176 + 1, 608 - 1, 208 - 1, false);
		
		draw_set_font(font0);
		draw_set_colour(c_black);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
		draw_text(352 + 6, 176 + 6, lg_name);
		
		#endregion
		#region password
		
		draw_set_colour(c_black);
		draw_rectangle(352, 240, 608, 272, false);
		draw_set_colour(c_white);
		draw_rectangle(352 + 1, 240 + 1, 608 - 1, 272 - 1, false);
		
		draw_set_font(font0);
		draw_set_colour(c_black);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
		var censoredstring = "";
		repeat string_length(passwordstring)
			censoredstring += "*";
		draw_text(352 + 6, 240 + 6, string(censoredstring) + (selectedpassword && textline ? "|" : ""));
		
		if !selectedpassword
		{
			textline = false;
			alarm[1] = -1;
			
			if mouse_check_button_pressed(mb_left)
			&& mouse_x >= 352 && mouse_y >= 240 && mouse_x < 608 && mouse_y < 272
			&& !loading
			{
				keyboard_string = string_lettersdigits(passwordstring);
				textline = true;
				selectedpassword = true;
			}
		}
		
		if selectedpassword && !loading
		{
			if alarm[1] == -1
				alarm[1] = room_speed / 2;
			
			keyboard_string = string_copy(string_lettersdigits(keyboard_string), 1, 30);
			passwordstring = keyboard_string;
				
			if mouse_check_button_pressed(mb_left)
			&& !(mouse_x >= 352 && mouse_y >= 240 && mouse_x < 608 && mouse_y < 272)
				selectedpassword = false;
		}
		
		draw_set_font(global.font_small);
		draw_set_colour(c_white);
		draw_text(352, 216, registering ? "Reenter password" : "Password");
		
		#endregion
		
		if !registering
		{
			#region logging in
		
			if (draw_editorbutton(384, 296, "LOG IN") or (keyboard_check_pressed(vk_enter) && selectedpassword))
			&& !loading
			{
				if passwordstring == ""
				{
					with obj_roomname
					{
						message = "INPUT A PASSWORD";
						showtext = true;
						alarm[0] = room_speed * 2;
					}
				}
				else
				{
					selectedpassword = false;
					scr_requestlogin_alt(lg_name, md5_string_utf8(passwordstring));
				}
			}
		
			#endregion
			#region register
				
			if !regedit
			{
				if draw_editorbutton(384, 296 + 64, "REGISTER") && !loading
				{
					if passwordstring == ""
					{
						with obj_roomname
						{
							message = "INPUT A PASSWORD";
							showtext = true;
							alarm[0] = room_speed * 2;
						}
					}
					else
					{
						selectedpassword = false;
						passconfirm1 = passwordstring;
						passwordstring = "";
						keyboard_string = "";
						registering = true;
					}
				}
			}
		
			#endregion
		}
		else
		{
			#region confirm password
			
			if regedit
			{
				registering = false;
				exit;
			}
			
			if draw_editorbutton(384, 296, "REGISTER") && !loading
			{
				if passwordstring != passconfirm1
				{
					with obj_roomname
					{
						message = "PASSWORDS DONT MATCH!";
						showtext = true;
						alarm[0] = room_speed * 2;
					}
				}
				else
				{
					passconfirm1 = "";
					selectedpassword = false;
					scr_requestregister_alt(lg_name, md5_string_utf8(passwordstring));
				}
			}
			
			#endregion
		}
		
		#region authed
		
		if global.auth != ""
		{
			level_string = undefined;
			menu = menutypes.levelbrowser;
			request = undefined;
			records = undefined;
			
			if paging_type != 3 // normal
				scr_requestpage(page);
			else // alt
				scr_requestpage_alt(page);
		}
		
		#endregion
		
		break;
	}
}

if loading
{
	draw_sprite_ext(spr_loading, 0, room_width / 2, room_height / 2, 1, 1, loadingrotation, c_white, 1);
	loadingrotation += 1;
}