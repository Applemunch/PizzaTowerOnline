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

// change the palette
xoffset = lerp(xoffset, 0, 0.25);
if check_shaders() or !selvert
{
	if -key_left2 && sel[0] > selmin
	{
		scr_soundeffect(sfx_step);
		sel[0] -= 1;
		xoffset = -100;
	}
	else if key_right2 && sel[0] < selmax
	{
		scr_soundeffect(sfx_step);
		sel[0] += 1;
		xoffset = 100;
	}
	sel[0] = clamp(sel[0], selmin, selmax);
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
		event_user(1);
}