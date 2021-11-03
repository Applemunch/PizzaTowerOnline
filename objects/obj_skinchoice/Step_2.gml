/*
if fade == 1
{
	fadealpha += 0.1;
	if fadealpha >= 1
	{
		// init
		fadealpha = 1;
		show = true;
		
		character = obj_player1.character;
		paletteselect = obj_player1.paletteselect;
		
		fade = 0;
	}
}

if fade == 0
{
	fadealpha -= 0.1;
	if fadealpha <= 0
	{
		fadealpha = 0;
		fade = -1;
	}
}
*/

event_inherited();
if sel[1] == "N" && key_taunt2
{
	scr_soundeffect(sfx_step);
	noisetype = !noisetype;
}

// change character
var lastchar = "SP";
/*
if (instance_exists(obj_gms) && gms_info_isloggedin() && string_lower(gms_self_name()) == "peic")
or debug
	lastchar = "G";
*/

if key_down2 && sel[1] != lastchar
{
	surface_free(palsurf);
	scr_soundeffect(sfx_step);
	
	yoffset = 100;
	switch sel[1]
	{
		case "P":
			sel[1] = "N";
			break;
		case "N":
			sel[1] = "V";
			break;
		case "V":
			sel[1] = "S";
			break;
		case "S":
			sel[1] = "SP";
			break;
		case "SP":
			if debug
				sel[1] = "SN";
			else
				sel[1] = "G";
			break;
		case "SN":
			if debug
				sel[1] = "G";
			break;
		
		/*
			sel[1] = "M";
			break;
		case "M":
			sel[1] = "SP";
			break;
		*/
	}
	event_user(0);
}
else if key_up2 && sel[1] != "P"
{
	surface_free(palsurf);
	scr_soundeffect(sfx_step);
	
	yoffset = -100;
	switch sel[1]
	{
		case "N":
			sel[1] = "P";
			break;
		case "V":
			sel[1] = "N";
			break;
		case "S":
			sel[1] = "V";
			break;
		case "SP":
			sel[1] = "S";
			break;
		case "SN":
			sel[1] = "SP";
			break;
		case "G":
			if debug
				sel[1] = "SN";
			else
				sel[1] = "SP";
			break;
	}
	event_user(0);
}