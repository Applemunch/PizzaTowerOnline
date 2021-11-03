if open
{
	scr_getinput();
	
	var move = -key_up2 + key_down2;
	if move != 0
	{
		if sel + move >= 0 && sel + move <= array_length(actions) - 1
		{
			scr_soundeffect(sfx_step);
			sel += move;
		}
	}
	
	if key_slap2
	{
		scr_soundeffect(sfx_enemyprojectile);
		event_user(0);
	}
	
	if key_jump or keyboard_check_pressed(vk_enter)
	{
		actions[sel][1]();
		event_user(0);
		
		if goto != -1
		{
			with obj_player1
			{
				scr_soundeffect(sfx_door)
				
				with obj_camera
					chargecamera = 0
				sprite_index = spr_lookdoor
				
				targetDoor = "A"
				targetRoom = other.goto
				
				image_index = 0
				state = states.door
				mach2 = 0
		
				doorx = other.x + 50;
				instance_create(x, y, obj_fadeout)
			}
		}
	}
}