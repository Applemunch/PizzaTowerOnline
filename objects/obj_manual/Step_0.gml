if !visible
{
	i = 0;
	if keyboard_check_pressed(vk_f5) && obj_player1.state != states.door
	{
		scr_soundeffect(sfx_step);
		visible = true;
	}
}
else
{
	scr_getinput(true);
	if key_right2 && i < sprite_get_number(spr_manual) - 1
	{
		i += 1
		scr_soundeffect(sfx_step)
	}

	if -key_left2 && i > 0
	{
		i -= 1
		scr_soundeffect(sfx_step)
	}

	if key_slap2 or keyboard_check_pressed(vk_f5) or key_start
	{
		scr_soundeffect(sfx_enemyprojectile);
		visible = false;
	}
}