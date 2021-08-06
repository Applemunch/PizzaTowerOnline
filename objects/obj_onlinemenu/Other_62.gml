if ds_map_find_value(async_load, "id") == request
{
	if ds_map_find_value(async_load, "status") == 0
	{
		loading = false;
		asyncresult = ds_map_find_value(async_load, "result");
		map = json_decode(asyncresult);
		if map == -1
		{
			with obj_roomname
			{
				showtext = true;
				message = lang_string("editor.menu.async.invalid");
				alarm[0] = 200;
			}
			exit;
		}
		
		#region official leveleditor
		
		if requestype == reqtypes.read_level
		or requestype == reqtypes.tp_level
		{
			level_id = ds_map_find_value(map, "id");
			level_name = ds_map_find_value(map, "name");
			
			level_desc = ds_map_find_value(map, "description");
			level_desc = string_replace_all(string(level_desc), "&amp;", "&");
			level_desc = string_replace_all(level_desc, "&lt;", "<");
			level_desc = string_replace_all(level_desc, "&gt;", ">");
			level_desc = string_replace_all(level_desc, "&quot;", "\"");
			
			level_string = ds_map_find_value(map, "levelstring");
			level_userid = ds_map_find_value(map, "userid");
			level_author = ds_map_find_value(map, "author");
			level_created = ds_map_find_value(map, "created");
		}
		
		if requestype == reqtypes.read_paging
		{
			var records_get = ds_map_find_value(map, "records");
			var paging_get = ds_map_find_value(map, "paging");
			
			if records_get != undefined && paging_get != undefined
			{
				var paging_last = ds_map_find_value(paging_get, "last");
				var paginglast_get = page;
				
				if paging_last != undefined && string_digits(string(paging_last)) != ""
				{
					if paging_type == 0
						paginglast_get = real(string_replace(paging_last, "http://pizzatowerleveleditor.online/level_api/level/read_paging.php?page=", ""));
					else if paging_type == 1
						paginglast_get = real(string_replace(paging_last, "http://pizzatowerleveleditor.online/level_api/level/featured_paging.php?page=", ""));
					else if paging_type == 2
						paginglast_get = real(string_replace(paging_last, "http://pizzatowerleveleditor.online/level_api/level/search.php?s=page=", ""));
				}
				
				records = records_get;
				pagelast = paginglast_get;
				yview = 0;
			}
			else
			{
				pagelast = 0;
				
				showtext = true;
				message = lang_string("editor.menu.async.unexpected");
				alarm[0] = 200;
			}
		}
		
		#endregion
		#region alt leveleditor
		
		if requestype == reqtypes.read_level_alt
		or requestype == reqtypes.tp_level_alt
		{
			level_name = ds_map_find_value(map, "name");
			
			level_desc = ds_map_find_value(map, "description");
			level_desc = string_replace_all(string(level_desc), "&amp;", "&");
			level_desc = string_replace_all(level_desc, "&lt;", "<");
			level_desc = string_replace_all(level_desc, "&gt;", ">");
			level_desc = string_replace_all(level_desc, "&quot;", "\"");
			
			level_string = ds_map_find_value(map, "levelString");
			level_userid = ds_map_find_value(map, "creator");
			level_author = ds_map_find_value(map, "author");
			level_created = ds_map_find_value(map, "date");
		}
		
		if requestype == reqtypes.read_paging_alt
		{
			/*
			var records_get = ds_map_find_value(map, "levels");
			if records_get != undefined
			{
				records = records_get;
				yview = 0;
			}
			else
			{
				showtext = true;
				message = "GOT UNEXPECTED RESULTS";
				alarm[0] = 200;
			}
			pagelast = 0;
			*/
			
			var records_get = ds_map_find_value(map, "records");
			var paging_get = ds_map_find_value(map, "paging");
			
			if records_get != undefined && paging_get != undefined
			{
				var paging_last = ds_map_find_value(paging_get, "last");
				var paginglast_get = page;
				
				if paging_last != undefined && string_digits(string(paging_last)) != ""
					paginglast_get = real(string_replace(paging_last, "https:\/\/ptoleveleditor.000webhostapp.com\/api\/level_list_pages?level=", ""));
				
				records = records_get;
				pagelast = paginglast_get;
				yview = 0;
			}
			else
			{
				pagelast = 0;
				
				showtext = true;
				message = lang_string("editor.menu.async.unexpected");
				alarm[0] = 200;
			}
		}
		
		if requestype == reqtypes.login_alt
		{
			var auth_get = ds_map_find_value(map, "auth");
			var userid_get = ds_map_find_value(map, "id");
			
			if auth_get != undefined
			{
				global.auth = auth_get;
				if userid_get != undefined
					userid = userid_get;
			}
			else
			{
				message = lang_string("editor.menu.async.unauthorized");
				showtext = true;
				alarm[0] = room_speed * 2;
			}
		}
		
		if requestype == reqtypes.register_alt
		{
			passwordstring = "";
			selectedpassword = false;
			registering = false;
			
			regedit = true;
			if !gms_self_isguest()
				gms_ini_player_write("saveData", "regedit", 1);
		}
		
		#endregion
		#region both
		
		if requestype == reqtypes.tp_level
		or requestype == reqtypes.tp_level_alt
		{
			room_goto(custom_lvl_room);
			if obj_gms.__user != noone
				obj_gms.alarm[0] = 10;
			else
			{
				scr_playerreset();
				obj_player1.x = global.gottp[1];
				obj_player1.y = global.gottp[2];
				obj_player1.targetDoor = "none";
			}
		}
		
		var msg = ds_map_find_value(json_decode(asyncresult), "message");
		if msg != undefined && string(msg) != ""
		{
			showtext = true;
			message = string_upper(string(msg));
			alarm[0] = 200;
		}
		
		#endregion
	}
}