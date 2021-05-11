function scr_gms_drawchat(_x, _y, username, userid, message, width, yscale, color)
{
	var itsme = false;
	if argument_count > 8
		itsme = argument[8];
	
	// username and string
	var str = message;
	
	var nick = gms_other_get_string(userid, "nickname");
	if nick != username && nick != ""
		username = nick;
	
	if username != ""
	{
		if global.streamer
			username = "Player" + string(userid);
		str = username + ": " + str;
	}
	
	// emoji
	var finalstr = str;
	finalstr = string_replace_all(finalstr, ":fedora:", "\\e00");
	finalstr = string_replace_all(finalstr, ":awful:", "\\e01");
	finalstr = string_replace_all(finalstr, ":trolled:", "\\e02");
	
	// text effects
	if (gms_self_admin_rights() && gms_self_playerid() == userid)
	or gms_other_admin_rights(userid)
	{
		// owner
		finalstr = string_replace_all(finalstr, "/reset ", "\\E00");
		finalstr = string_replace_all(finalstr, "/wavy ", "\\E01");
		finalstr = string_replace_all(finalstr, "/shaky ", "\\E02");
	}
	
	#region detect center
	
	function detect_center(_finalstr, _xx, __x, _w)
	{
		var w = 0;
		for(var j = 1; j <= string_length(_finalstr); j++)
		{
			var letter = string_char_at(_finalstr, j);
			if letter == " " && _xx >= __x + _w
			{
				//var alignstr = string_copy(_finalstr, 1, j);
				break;
			}
			switch letter
			{
				case "\\":
				{
					var getchar = string_char_at(_finalstr, ++j);
					
					if getchar == "e"
					or getchar == "E"
					{
						if getchar == "e"
							w += sprite_get_width(spr_emoji);
						
						j += 2;
					}
					continue;
				}
			}
			w += string_width(letter);
		}
		return _xx - (w / 2) + 4;
	}
	
	#endregion
	
	// draw the text
	var xx = _x;
	var yy = _y;
	
	// get length until line break
	var w = 900;
	
	// other
	var fx = -1;
	draw_set_colour(color);
	
	// letter per letter
	for(var i = 1; i <= string_length(finalstr); i++)
	{
		var letter = string_char_at(finalstr, i);
		if letter == " " && xx >= _x + w
		{
			xx = _x;
			yy += string_height("M");
		}
		switch letter
		{
			case "\\":
				var getchar = string_char_at(finalstr, ++i);
				
				// emoji
				if getchar == "e"
				{
					try
						draw_sprite(spr_emoji, string_char_at(finalstr, ++i) + string_char_at(finalstr, ++i), xx, yy - 8);
					xx += sprite_get_width(spr_emoji);
				}
				
				// effects
				if getchar == "E"
				{
					try
						fx = real(string_char_at(finalstr, ++i) + string_char_at(finalstr, ++i));
				}
				continue;
		}
		
		// effects
		switch fx
		{
			case 1: // wavy
				draw_text_transformed(xx + cos(i + (get_timer() / 100000)), yy + sin(i + (get_timer() / 100000)), letter, 1, yscale, 0);
				break;
			case 2: // shaky
				draw_text_transformed(xx + random_range(-1, 1), yy + random_range(-1, 1), letter, 1, yscale, 0);
				break;
			case 0: // reset
			default:
				draw_text_transformed(xx, yy, letter, 1, yscale, 0);
				break;
		}
		xx += string_width(letter);
	}
}