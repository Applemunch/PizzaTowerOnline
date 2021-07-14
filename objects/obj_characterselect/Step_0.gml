image_speed = 0;
if !goback
{
	if y < 94
		y += 12;
	else
	{
		image_speed = 0.35;
		y = 94;
	}

	if !ready
	{
		scr_getinput();
		if (key_right2 or -key_left2) && selected == 0
		{
			selected += 1
			scr_soundeffect(sfx_step)
		}
		else if (-key_left2 or key_right2) && selected == 1
		{
			selected -= 1
			scr_soundeffect(sfx_step)
		}
	
		if key_jump
		{
			if selected == 0
			{
				with obj_peppinoselect
				{
					depth = 0
					sprite_index = spr_peppinoselected
					image_index = 0
				}
			
				with obj_player1
				{
					character = "P";
					scr_characterspr();
				}
			}
			else if selected == 1
			{
				with obj_noiseselect
				{
					depth = 0
					sprite_index = spr_noiseselected
					image_index = 0
				}
			
				with obj_player1
				{
					character = "N";
					scr_characterspr();
				}
			}
			ready = true
			scr_soundeffect(sfx_collecttoppin)
	
			alarm[0] = 100
		}
	}
}
else
{
	image_index = 0;
	
	y -= 12;
	if y < -sprite_height
		instance_destroy();
}