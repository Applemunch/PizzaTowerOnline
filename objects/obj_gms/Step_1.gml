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
			chat_lastmessage = str;
			
			// send webhook
			var body = ds_map_create();
			
			str = string_replace_all(str, ":", "\\:");
			str = string_replace_all(str, "\\:fedora\\:", "<:fedora:832333701886246922>");
			str = string_replace_all(str, "\\:awful\\:", "<:awful:845378459206811729>");
			str = string_replace_all(str, "\\:trolled\\:", "<:ptotroll:845378529738620965>");
			
			ds_map_add(body, "content", str);
			ds_map_add(body, "username", gms_self_name());
			ds_map_add(body, "avatar_url", "");
			
			var data = json_encode(body);
			ds_map_destroy(body);
			
			var header = ds_map_create();
			ds_map_add(header, "Content-Type", "application/json"); // "multipart/form-data" for files
			
			http_request("https://discord.com/api/webhooks/845370772561985536/9IwZLFWKeiT0GVH8IMFW8gakkC4F2IJm1ay06QkLRqLptKOJu4ZmVRN0CMSAcXBlatnJ", "POST", header, data);
			ds_map_destroy(header);
		}
		
        global.__chat_directclose = true;
        global.__chat_highl = true;
    }
	
    keyboard_string = "";
    global.__chat_typing = false;
	
	keyboard_clear(global.__chat_submitkey);
	keyboard_clear(global.__chat_togglekey);
}