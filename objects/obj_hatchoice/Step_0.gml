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
}

// change the palette
xoffset = lerp(xoffset, 0, 0.25);
if -key_left2 && hatselect > 0
{
	scr_soundeffect(sfx_step);
	hatselect -= 1;
	xoffset = -100;
	
	event_user(0);
}
else if key_right2 && hatselect < array_length(hatnames) - 1
{
	scr_soundeffect(sfx_step);
	hatselect += 1;
	xoffset = 100;
	
	event_user(0);
}
hatselect = clamp(hatselect, 0, array_length(hatnames) - 1);

// change character
yoffset = lerp(yoffset, 0, 0.25);
if key_down2 or key_up2
	scr_soundeffect(sfx_denied);

// select the palette
if key_jump
{
	if locked
		scr_soundeffect(sfx_denied);
	else
	{
		if spr_idle == spr_nohat
			spr_idle = -1;
		obj_player1.hatsprite = spr_idle;
		scr_soundeffect(sfx_collecttoppin);
		instance_destroy();
	}
}