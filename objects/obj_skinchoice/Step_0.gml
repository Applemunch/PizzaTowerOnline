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

if room == Realtitlescreen or room == characterselect
{
	instance_destroy();
	exit;
}

scr_getinput(true);
if key_start or key_slap2
{
	scr_soundeffect(sfx_enemyprojectile);
	instance_destroy();
	exit;
}

if character == "N" && key_taunt2
{
	scr_soundeffect(sfx_step);
	noisetype = !noisetype;
}

// change the palette
xoffset = lerp(xoffset, 0, 0.25);
if check_shaders()
{
	if -key_left2 && paletteselect > palettemin
	{
		scr_soundeffect(sfx_step);
		paletteselect -= 1;
		if paletteselect < palettemin
			paletteselect = -1;
		
		xoffset = -100;
	}
	else if key_right2 && paletteselect < palettemax
	{
		scr_soundeffect(sfx_step);
		if paletteselect == -1
			paletteselect = palettemin;
		else
			paletteselect += 1;
		
		xoffset = 100;
	}
	paletteselect = clamp(paletteselect, -1, palettemax);
}
else
{
	paletteselect = 0;
	if !locked && (-key_left2 or key_right2)
		palettenames[paletteselect][1] = "ur graphic card is shit";
}
lockedpal = (paletteselect < 0 && !debug);

// change character
yoffset = lerp(yoffset, 0, 0.25);
if key_down2 && character != "SP"
{
	surface_free(palsurf);
	scr_soundeffect(sfx_step);
	
	yoffset = 100;
	switch character
	{
		case "P":
			character = "N";
			break;
		case "N":
			character = "V";
			break;
		case "V":
			character = "S";
			break;
		case "S":
			character = "SP";
			break;
		case "G":
			character = "SP";
			break;
		
		/*
			character = "M";
			break;
		case "M":
			character = "SP";
			break;
		*/
	}
	event_user(0);
}
else if key_up2 && character != "P"
{
	surface_free(palsurf);
	scr_soundeffect(sfx_step);
	
	yoffset = -100;
	switch character
	{
		case "N":
			character = "P";
			break;
		case "V":
			character = "N";
			break;
		case "S":
			character = "V";
			break;
		case "G":
			character = "S";
			break;
		case "SP":
			character = "S";
			break;
	}
	event_user(0);
}

// select the palette
if key_jump && obj_player1.state == states.normal
{
	if locked or lockedpal
		scr_soundeffect(sfx_denied);
	else
	{
		var prevanton = scr_checkskin(checkskin.p_anton);
		var prev = obj_player1.character;
		
		with obj_player1
		{
			shotgunAnim = false;
			global.gotshotgun = false;
			pogochargeactive = false;
			
			character = other.character;
			scr_characterspr();
			sprite_index = spr_idle;
			scr_changetoppings();
			
			ds_list_copy(palcolors, other.palcolors);
			custompal_update(palcolors);
			
			noisetype = other.noisetype;
			
			if character != prev
			or paletteselect != other.paletteselect
			{
				repeat 6
				{
					with instance_create(x + random_range(-50, 50), y + random_range(-50, 50), obj_cloudeffect)
						depth = other.depth - 1;
				}
				
				if global.gameplay != 0
				{
					with obj_tv
					{
						if sprite_index != spr_tv_open
							sprite_index = idlespr;
					}
				}
			}
			
			paletteselect = other.paletteselect;
		}
		
		if ((scr_checkskin(checkskin.p_anton) && !prevanton))
		or ((!scr_checkskin(checkskin.p_anton) && prevanton))
		{
			// reset song if anton
			with obj_hungrypillar
			{
				audio_stop_sound(song);
				song = -1;
			}
		
			with obj_music
			{
				if global.panic
					audio_stop_sound(global.music);
				fadeoff = 0;
				event_perform(ev_other, ev_room_start);
			}
			
			if scr_checkskin(checkskin.p_antononly)
				scr_soundeffect(sfx_antonball);
			else
				scr_soundeffect(sfx_collecttoppin);
		}
		else
		{
			scr_soundeffect(sfx_collecttoppin);
			scr_characterentrance(character);
		}
		
		instance_destroy();
	}
}