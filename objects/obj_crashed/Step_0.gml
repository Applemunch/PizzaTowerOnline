scr_getinput();

if (key_start or key_jump or key_slap or keyboard_check_pressed(vk_enter))
&& !fading
{
	scr_soundeffect(sfx_contin);
	fading = true;
}

if fading
{
	image_alpha += 0.1;
	if image_alpha >= 2
		room_goto(array_pop(global.crashed));
}