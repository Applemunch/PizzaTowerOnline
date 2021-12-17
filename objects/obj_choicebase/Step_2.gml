scr_getinput(true);
if room == Realtitlescreen or room == characterselect
{
	instance_destroy();
	exit;
}

if key_start or key_slap2
{
	keyboard_clear(global.key_start);
	keyboard_clear(global.key_slap);
	
	scr_soundeffect(sfx_enemyprojectile);
	instance_destroy();
	exit;
}

// change the palette
xoffset = lerp(xoffset, 0, 0.25);
if check_shaders() or !selvert
{
	if (-key_left2 or (holdt == 0 && -key_left)) && sel[0] > selmin
	{
		scr_soundeffect(sfx_step);
		sel[0] -= 1;
		xoffset = -100;
		
		if holdt == -1
			holdt = 30;
		else
			holdt = 5;
		
		if !selvert
			event_user(0);
	}
	else if (key_right2 or (holdt == 0 && key_right)) && sel[0] < selmax
	{
		scr_soundeffect(sfx_step);
		sel[0] += 1;
		xoffset = 100;
		
		if holdt == -1
			holdt = 30;
		else
			holdt = 5;
		
		if !selvert
			event_user(0);
	}
	sel[0] = clamp(sel[0], selmin, selmax);
	
	if key_left + key_right == 0
		holdt = -1;
	else if holdt > 0
		holdt--;
}
else
{
	sel[0] = 0;
	if !locked && (-key_left2 or key_right2)
		palname = "ur graphic card is shit";
}

// change character
yoffset = lerp(yoffset, 0, 0.25);

// select the palette
if key_jump
{
	if locked
		scr_soundeffect(sfx_denied);
	else
	{
		keyboard_clear(global.key_jump);
		event_user(1);
	}
}
