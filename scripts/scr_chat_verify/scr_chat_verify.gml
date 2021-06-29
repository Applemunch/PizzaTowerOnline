#region scr_getuser

function scr_getuser(argument0)
{
	var __uservar = ds_list_find_value(argument0, 1);
	var __uservar2 = false;
	
	if string_isnumber(__uservar)
	{
		if gms_other_find(real(__uservar)) != -1
			__uservar2 = gms_other_find(real(__uservar));
		else
		{
			gms_chat_local("Player " + __uservar + " not found", merge_colour(c_red, c_white, 0.25));
			return false;
		}
	}
	else if gms_other_find_by_name(__uservar) == -1
	{
		gms_chat_local("Player " + __uservar + " not found", merge_colour(c_red, c_white, 0.25));
		return false;
	}
	else
		__uservar2 = gms_other_find_by_name(__uservar);
	return __uservar2;
}

#endregion
function scr_chat_verify(argument0)
{
	var list;
	#region /character
	
	/*
	if string_startswith(argument0, "/char ")
	or string_startswith(argument0, "/character ")
	{
		list = string_split(argument0, " ");
		if ds_list_size(list) != 2
		{
			gms_chat_local("Usage: /char CHARACTER", merge_colour(c_red, c_white, 0.25));
			return false;
		}
	
		if obj_player1.state != states.normal or (instance_exists(obj_snicklevelend) && obj_snicklevelend.image_index > 0)
		{
			gms_chat_local("You can't change characters right now", merge_colour(c_red, c_white, 0.25));
			return false;
		}
	
		switch string_upper(ds_list_find_value(list, 1))
		{
			case "P":
			case "PEPPINO":
				if scr_checkskin(checkskin.p_anton)
				{
					audio_stop_sound(global.music);
					with obj_music
						event_perform(ev_other, ev_room_start);
				}
			
				if obj_player1.character != "P" && global.panic
					audio_stop_sound(global.music);
			
				with obj_player1
					character = "P";
				gms_chat_local("Changed character to Peppino", merge_colour(c_yellow, c_white, 0.25));
				break;
		
			case "N":
			case "NOISE":
			case "THENOISE":
				if obj_player1.character != "N" && global.panic
					audio_stop_sound(global.music);
			
				with obj_player1
					character = "N";
				gms_chat_local("Changed character to The Noise", merge_colour(c_yellow, c_white, 0.25));
				break;
		
			case "V":
			case "VIGILANTE":
			case "COWBOY":
				if obj_player1.character != "V" && global.panic
					audio_stop_sound(global.music);
			
				with obj_player1
					character = "V";
				gms_chat_local("Changed character to Vigilante", merge_colour(c_yellow, c_white, 0.25));
				break;
		
			case "S":
			case "SNICK":
				if obj_player1.character != "S" && global.panic
					audio_stop_sound(global.music);
			
				with obj_player1
					character = "S";
				gms_chat_local("Changed character to Snick", merge_colour(c_yellow, c_white, 0.25));
				break;
		
			default:
				gms_chat_local("Unknown character \"" + ds_list_find_value(list, 1) + "\"", merge_colour(c_red, c_white, 0.25));
				return false;
				break;
		}
	
		scr_characterentrance(obj_player1.character);
	
		with obj_player1
		{
			shotgunAnim = false;
			scr_characterspr();
			scr_changetoppings();
		}
	
	
		gms_chat_local("Press the taunt button twice and use the up or down arrow keys to select a character", merge_colour(c_red, c_white, 0.25));
		return false;
	}
	*/
	
	#endregion
	#region /skate
	
	if argument0 == "/skate"
	or argument0 == "/pogo"
	{
		/*
		if obj_player1.character == "N"
		{
			with obj_player1
				noisetype = !noisetype;
			gms_chat_local("Now using Noise " + (obj_player1.noisetype == 0 ? "pogo" : "skateboard"), merge_colour(c_yellow, c_white, 0.25));
		}
		else
			gms_chat_local("Play as Noise first", merge_colour(c_red, c_white, 0.25));
		*/
		
		gms_chat_local("Press the taunt button in the dresser menu", merge_colour(c_red, c_white, 0.25));
		return false;
	}
	
	#endregion
	#region /list
	
	if argument0 == "/list"
	{
		if gms_other_count() == 0
		{
			var choices = [
				"You're alone.", 
				"No one is playing.", 
				"There's nobody around.",
				"But nobody came.",
				"There is 1 user online: You", 
				//"Sounds like you need friends.",
				"Sorry, it's currently Pizza Tower Offline.",
				obj_player1.character != "S" ? "You're alone. Snick is here for you." : "You're alone. Sneck is here for you.",
				"The list is empty.",
				"List? What list?",
				"Nope.",
				"No signs of life.",
				//"Hate to break it to you, but...",
				"Looking for players...",
				//"It's " + string(current_hour) + ":" + string_replace_all(string_format(current_minute, 2, 0), " ", "0") + ", why are you playing?",
				//"Everyone else is enjoying their life while you're playing this.",
				"Sorry, everyone's busy fixing Mario.",
				"You hava an aura so intensely unfunny everyone left before you came in.",
				"Relatably empty.",
				"Try again.",
				"Don't you have anything better to do?",
			]
			
			// conditional
			/*
			var list_username = environment_get_variable("USERNAME");
			if !string_startswith(string_lower(list_username), "computer")
			&& !string_startswith(string_lower(list_username), "user")
			&& !string_startswith(string_lower(list_username), "admin")
			&& !string_startswith(string_lower(list_username), "defaultuser")
				array_push(choices, "It seems nobody wants to play with " + list_username + ".");
			*/
			
			gms_chat_local(choices[irandom(array_length(choices) - 1)], merge_colour(c_yellow, c_white, 0.25));
		}
		else
		{
			if gms_other_count() == 1
				var str = "There is 1 other user online" + (global.streamer ? "" : ":");
			else
				str = "There are " + string(gms_other_count()) + " other users online" + (global.streamer ? "" : ":");
			
			if !global.streamer
			{
				gms_chat_local(str, merge_colour(c_yellow, c_white, 0.25));
			
				var __str = "";
				for(var i = 0; i < gms_other_count(); i++)
					__str += (i != 0 ? ", " : "") + gms_other_get_string(gms_other_find(i), "name");
				gms_chat_local(__str, merge_colour(c_yellow, c_white, 0.25));
			}
		}
		return false;
	}
	
	#endregion
	#region /t (minichat)
	
	if argument0 == "/t"
	or argument0 == "/minichat"
	{
		global.minichat = !global.minichat;
		gms_chat_local("Toggled mini chat " + (global.minichat ? "ON" : "OFF"), merge_colour(c_yellow, c_white, 0.25));
		return false;
	}
	
	#endregion
	#region /ping
	
	if argument0 == "/ping"
	{
		gms_chat_local("Returned " + string(gms_info_ping()) + "ms", merge_colour(c_yellow, c_white, 0.25));
		return false;
	}
	
	#endregion
	#region /dance
	
	if argument0 == "/dance"
	{
		with obj_player1
		{
			if state != states.normal or character != "G"
				gms_chat_local("You can't do this right now", merge_colour(c_red, c_white, 0.25));
			else
			{
				state = states.dance;
				gms_chat_toggle(false);
			}
		}
		return false;
	}
	
	#endregion
	
	// admin
	#region /tphere
	
	if string_startswith(argument0, "/tphere ")
	{
		if gms_self_admin_rights() or debug
		{
			list = string_split(argument0, " ");
			if ds_list_size(list) != 2
			{
				gms_chat_local("Usage: /tphere NAME", merge_colour(c_red, c_white, 0.25));
				return false;
			}
		
			var __uservar = ds_list_find_value(list, 1);
			if string_lower(__uservar) == "all" && gms_self_admin_rights() & ar_owner
			{
				var allplayers = gms_other_count();
				var i = 0;
				while i < allplayers
				{
					gms_p2p_send(p2p.tpother, gms_other_find(i), obj_player1.x, obj_player1.y, scr_gms_room());
					allplayers = gms_other_count();
					i++;
				}
			
				gms_chat_local("Pulling everyone", merge_colour(c_yellow, c_white, 0.25));
				return false;
			}
			else
			{
				__user = scr_getuser(list);
				if __user == false
				{
					gms_chat_local("User doesn't exist", merge_colour(c_red, c_white, 0.25));
					return false;
				}
				
				// do the thing
				gms_p2p_send(p2p.tpother, __user, obj_player1.x, obj_player1.y, scr_gms_room());
				gms_chat_local("Pulling " + gms_other_get_string(__user, "name"), merge_colour(c_yellow, c_white, 0.25));
				
				return false;
			}
		}
	}
	
	#endregion
	#region /tp
	
	else if string_startswith(argument0, "/tp ")
	{
		if gms_self_admin_rights() or debug
		{
			list = string_split(argument0, " ");
			if ds_list_size(list) != 2
			{
				gms_chat_local("Usage: /tp NAME", merge_colour(c_red, c_white, 0.25));
				return false;
			}
			
			__user = scr_getuser(list);
			if __user == false
			{
				gms_chat_local("User doesn't exist", merge_colour(c_red, c_white, 0.25));
				return false;
			}
			
			// do the thing
			scr_playerreset();
			obj_player1.targetDoor = "none";
			obj_player1.state = -1;
		
			var _room = gms_other_get_real(__user, "room");
			if _room < 0
			{
				var onl;
				if instance_exists(obj_onlinemenu)
					onl = obj_onlinemenu;
				else
					onl = instance_create(0, 0, obj_onlinemenu);
			
				if onl.level_id == -_room
					obj_gms.alarm[0] = 5;
				else
				{
					with onl
					{
						menu = -1;
						scr_requestlevel(-_room);
						requestype = reqtypes.tp_level;
					}
				}
				gms_chat_local("Teleporting", merge_colour(c_yellow, c_white, 0.25));
			}
			else if _room >= custom_lvl_room + 32
			{
				if instance_exists(obj_onlinemenu)
					onl = obj_onlinemenu;
				else
					onl = instance_create(0, 0, obj_onlinemenu);
			
				if onl.level_id == _room - custom_lvl_room - 32
					obj_gms.alarm[0] = 5;
				else
				{
					with onl
					{
						menu = -1;
						paging_type = 3;
						scr_requestlevel_alt(_room - custom_lvl_room - 32);
						requestype = reqtypes.tp_level;
					}
				}
				gms_chat_local("Teleporting", merge_colour(c_yellow, c_white, 0.25));
			}
			else
			{
				if room != _room
					room_goto_new(_room);
				gms_chat_local("Teleporting to player " + ds_list_find_value(list, 1) + " in room " + room_get_name(gms_other_get_real(__user, "room")), merge_colour(c_yellow, c_white, 0.25));
				obj_gms.alarm[0] = 5;
			}
			return false;
		}
	}
	
	#endregion
	#region /global
	
	if string_startswith(argument0, "/global ")
	{
		if gms_self_admin_rights() or debug
		{
			list = string_split(argument0, " ");
			if ds_list_size(list) < 2
			{
				gms_chat_local("Usage: /global MESSAGE", merge_colour(c_red, c_white, 0.25));
				return false;
			}
			gms_global_set("gotmessage", string_replace(argument0, ds_list_find_value(list, 0) + " ", ""));
			
			/*
			var allplayers = gms_other_count();
			var i = 0;
			while i < allplayers
			{
				gms_p2p_send(p2p.globalmessage, gms_other_find(i));
				allplayers = gms_other_count();
				i++;
			}
			*/
			
			gms_p2p_send(p2p.globalmessage, gms_p2p_all_in_session);
			
			/*
			obj_gms.__author = gms_self_name();
			global.__gotmessage = [true, string_replace(argument0, ds_list_find_value(list, 0) + " ", ""), obj_gms.__author];
			*/
			return false;
		}
	}
	
	#endregion
	#region /tp pos & room
	
	/*
	else if string_startswith(argument0, "/tpos ")
	{
		if gms_self_admin_rights() or debug
		{
			list = string_split(argument0, " ");
			
			if ds_list_size(list) != 3
			or !string_isnumber(list[| 1]) or !string_isnumber(list[| 2])
			{
				gms_chat_local("Usage: /tp X Y", merge_colour(c_red, c_white, 0.25));
				return false;
			}
			
			with obj_player1
			{
				x = real(list[| 1]);
				y = real(list[| 2]);
			}
			return false;
		}
	}
	
	else if string_startswith(argument0, "/tproom ")
	{
		if gms_self_isowner() or debug
		{
			list = string_split(argument0, " ");
			
			if ds_list_size(list) != 2
			{
				gms_chat_local("Usage: /tp ROOM", merge_colour(c_red, c_white, 0.25));
				return false;
			}
			
			var foundroom = false;
			if string_isnumber(list[| 1])
			{
				if room_exists(real(list[| 1]))
				{
					room_goto(real(list[| 1]));
					foundroom = true;
				}
			}
			else if asset_get_type(list[| 1]) == asset_room
			{
				room_goto(asset_get_index(list[| 1]));
				foundroom = true;
			}
			
			if !foundroom
				gms_chat_local("Room " + string(list[| 1]) + " not found", merge_colour(c_red, c_white, 0.25));
			else with obj_player1
				targetDoor = "A";
			return false;
		}
	}
	*/
	
	#endregion
	
	// owner
	#region /kickall
	
	if argument0 == "/kickall"
	{
		if (gms_self_admin_rights() & ar_owner) or debug
		{
			for(var i = 0; i < gms_other_count(); i++)
				gms_admin_kick(gms_other_find(i), "kicked by kickall");
			
			gms_chat_local("Kicked everyone", merge_colour(c_yellow, c_white, 0.25));
			return false;
		}
	}
	
	#endregion
	#region /setvar
	
	if string_startswith(argument0, "/setvar ")
	{
		if (gms_self_admin_rights() & ar_owner) or debug
		{
			list = string_split(argument0, " ");
			if ds_list_size(list) != 4
			{
				gms_chat_local("Usage: /setvar PLAYER VARIABLE VALUE", merge_colour(c_red, c_white, 0.25));
				return false;
			}
		
			var setto = ds_list_find_value(list, 3);
			if string_isnumber(setto)
				setto = real(setto);
			else if asset_get_index(setto) != -1
				setto = asset_get_index(setto);
			else
				setto = string_replace(setto, @"\", "");
		
			if string_lower(ds_list_find_value(list, 1)) == "all"
			{
				var allplayers = gms_other_count();
				var i = 0;
				while i < allplayers
				{
					gms_p2p_send(p2p.setvar, gms_other_find(i), ds_list_find_value(list, 2), setto);
					allplayers = gms_other_count();
					i++;
				}
				gms_chat_local("Setting variable " + ds_list_find_value(list, 2) + " to " + string(setto) + " in everyone", merge_colour(c_yellow, c_white, 0.25));
			}
			else
			{
				__user = scr_getuser(list);
				if __user == false
					return false;
		
				gms_p2p_send(p2p.setvar, __user, ds_list_find_value(list, 2), setto);
				gms_chat_local("Setting variable " + ds_list_find_value(list, 2) + " to " + string(setto) + " in player " + gms_other_get_string(__user, "name"), merge_colour(c_yellow, c_white, 0.25));
			}
			return false;
		}
	}
	
	#endregion
	#region /globalvar
	
	if string_startswith(argument0, "/globalvar ")
	{
		if (gms_self_admin_rights() & ar_owner) or debug
		{
			list = string_split(argument0, " ");
			if ds_list_size(list) != 4
			{
				gms_chat_local("Usage: /globalvar PLAYER VARIABLE VALUE", merge_colour(c_red, c_white, 0.25));
				return false;
			}
		
			var setto = ds_list_find_value(list, 3);
			if string_isnumber(setto)
				setto = real(setto);
			else if asset_get_index(setto) != -1
				setto = asset_get_index(setto);
			else
				setto = string_replace(setto, @"\", "");
		
			if string_lower(ds_list_find_value(list, 1)) == "all"
			{
				var allplayers = gms_other_count();
				var i = 0;
				while i < allplayers
				{
					gms_p2p_send(p2p.setglobal, gms_other_find(i), ds_list_find_value(list, 2), setto);
					allplayers = gms_other_count();
					i++;
				}
				gms_chat_local("Setting global variable " + ds_list_find_value(list, 2) + " to " + string(setto) + " in everyone", merge_colour(c_yellow, c_white, 0.25));
			}
			else
			{
				__user = scr_getuser(list);
				if __user == false
					return false;
		
				gms_p2p_send(p2p.setglobal, __user, ds_list_find_value(list, 2), setto);
				gms_chat_local("Setting global variable " + ds_list_find_value(list, 2) + " to " + string(setto) + " in player " + gms_other_get_string(__user, "name"), merge_colour(c_yellow, c_white, 0.25));
			}
			return false;
		}
	}
	
	#endregion
	#region /nickname
	
	if string_startswith(argument0, "/nickname ")
	{
		if (gms_self_admin_rights() & ar_owner) or debug
		{
			list = string_split(argument0, " ");
			if ds_list_size(list) < 2
			{
				gms_chat_local("Usage: /nickname NAME", merge_colour(c_red, c_white, 0.25));
				return false;
			}
		
			if !instance_exists(obj_player1)
			{
				gms_chat_local("Player 1 object doesn't exist", merge_colour(c_red, c_white, 0.25));
				return false;
			}
			else
			{
				obj_player1.nickname = string_replace(argument0, ds_list_find_value(list, 0), "");
				gms_chat_local("Changed nickname to " + obj_player1.nickname, merge_colour(c_yellow, c_white, 0.25));
			}
			return false;
		}
	}
	
	#endregion
	#region /music
	
	if string_startswith(argument0, "/music ")
	{
		if (gms_self_admin_rights() & ar_owner) or debug
		{
			list = string_split(argument0, " ");
			if ds_list_size(list) != 3
			{
				gms_chat_local("Usage: /music USER ASSET", merge_colour(c_red, c_white, 0.25));
				return false;
			}
		
			var __song = asset_get_index(ds_list_find_value(list, 2));
			if __song != -1
			{
				if asset_get_type(ds_list_find_value(list, 2)) != asset_sound
				{
					gms_chat_local("Asset must be a sound", merge_colour(c_red, c_white, 0.25));
					return false;
				}
			}
			else
			{
				gms_chat_local("Sound " + ds_list_find_value(list, 2) + " not found", merge_colour(c_red, c_white, 0.25));
				return false;
			}
		
			var __uservar = ds_list_find_value(list, 1);
			if string_lower(__uservar) == "all"
			{
				/*
				audio_stop_sound(global.music);
				scr_sound(__song);
				
				var allplayers = gms_other_count();
				var i = 0;
				while i < allplayers
				{
					gms_p2p_send(p2p.replacemusic, gms_other_find(i), __song);
					allplayers = gms_other_count();
					i++;
				}
				*/
				
				gms_p2p_send(p2p.replacemusic, gms_p2p_all_in_session, __song);
				
				gms_chat_local("Set music to " + string(__song) + " for " + "everyone", merge_colour(c_yellow, c_white, 0.25));
				return false;
			}
			else
			{
				__user = scr_getuser(list);
				if __user == false
					return false;
		
				// do the thing
				gms_p2p_send(p2p.replacemusic, __user, __song);
				gms_chat_local("Set music to " + string(__song) + " for " + gms_other_get_string(__user, "name"), merge_colour(c_yellow, c_white, 0.25));
				
				return false;
			}
		}
	}
	
	#endregion
	
	return true; // confirm sending chat message
	// return false to cancel sending message to others
}