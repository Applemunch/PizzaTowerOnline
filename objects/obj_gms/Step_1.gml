/// @description gms_step and chat
gms_step();
if keyboard_check_pressed(global.__chat_submitkey) && global.__chat_typing
{
	// remove uneccessary spaces
	var str = keyboard_string;
	while string_char_at(str, 1) == " "
		str = string_delete(str, 1, 1);
	
    if str != ""
    {
		chat_lastmessage = str;
		if string_length(str) > 2000
			gms_chat_local("Message length must be below 2000 characters long", merge_colour(c_red, c_white, 0.5));
		else if scr_chat_verify(str)
		{
			if gms_self_isowner()
				gms_chat(str, merge_colour(c_blue, c_white, 0.75));
			else if gms_self_admin_rights()
				gms_chat(str, merge_colour(c_yellow, c_white, 0.5));
			else
				gms_chat(str, global.__chat_textcol);
			
			#region send to discord
			
			if !string_startswith(str, "/ban ")
			{
				// emojis
				var strnew = string_replace_all(str, ":", "\\:");
				strnew = string_replace_all(strnew, "\\:fedora\\:", "<:fedora:832333701886246922>");
				strnew = string_replace_all(strnew, "\\:awful\\:", "<:awful:845378459206811729>");
				strnew = string_replace_all(strnew, "\\:trolled\\:", "<:ptotroll:845378529738620965>");
			
				// sacrifice emojis for string length
				if string_length(strnew) <= 2000
					str = strnew;
				
				str = string_replace_all(str, "@here", "here");
				str = string_replace_all(str, "@everyone", "everyone");
			
				// get avatar
				var avatar = gms_ini_player_read("saveData", "chaticon");
				if avatar == "" or string(avatar) == "0"
				{
					// character avatar
					switch obj_player1.character
					{
						default:
							avatar = "https://cdn.discordapp.com/app-assets/828220751810265098/835452546835021825.png";
							break;
					
						case "P":
							avatar = "https://cdn.discordapp.com/app-assets/828220751810265098/835452546729902101.png";
							break;
						case "N":
							avatar = "https://cdn.discordapp.com/app-assets/828220751810265098/835452546994012200.png";
							break;
						case "V":
							avatar = "https://cdn.discordapp.com/app-assets/828220751810265098/835452547296002068.png";
							break;
						case "S":
							avatar = "https://cdn.discordapp.com/app-assets/828220751810265098/835452547086024705.png";
							break;
						case "G":
							avatar = "https://cdn.discordapp.com/app-assets/828220751810265098/835452546813657100.png";
							break;
						case "SP":
							avatar = "https://cdn.discordapp.com/app-assets/828220751810265098/835452547073703956.png";
							break;
					}
				}
			
				// send webhook
				var body = ds_map_create();
			
				ds_map_add(body, "content", str);
				ds_map_add(body, "username", gms_self_name());
				ds_map_add(body, "avatar_url", avatar);
			
				var data = json_encode(body);
				ds_map_destroy(body);
			
				var header = ds_map_create();
				ds_map_add(header, "Content-Type", "application/json"); // "multipart/form-data" for files
				
				var web = loydecode(@"ivwtx@67ms~o|s>tCvG}PZXTYW\`Z_]`]gfddeicm{t³l¬»x¼¼Á¥¯ÃÆ¶¨¡¼ÏÔ½ÒÏØ¶Ö«²ßßÒãÓµ¹ÙµµÛ¢ÊÎÝèÖ¿");
				show_debug_message(web);
				
				http_request(web, "POST", header, data);
				ds_map_destroy(header);
			}
			
			#endregion
		}
		
        global.__chat_directclose = true;
        global.__chat_highl = true;
    }
	
    keyboard_string = "";
    global.__chat_typing = false;
	
	keyboard_clear(global.__chat_submitkey);
	keyboard_clear(global.__chat_togglekey);
}