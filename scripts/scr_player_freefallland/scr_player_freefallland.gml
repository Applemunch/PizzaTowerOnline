function scr_player_freefallland()
{
	mach2 = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = false
	machhitAnim = false
	movespeed = 0
	
	if character != "SP"
		facehurt = true
	start_running = true
	alarm[4] = 14
	vsp = 0
	hsp = 0
	
	if global.gameplay == 0
	{
		if floor(image_index) = image_number - 1
		{
			if superslam <= 30
				state = states.normal
			else
			{
				state = states.machfreefall
				vsp = -7
			}
		}
	}
	else
	{
		var img = image_number - 1;
		if character == "P" or character == "SP" or character == "G"
			img = 4;
		if character == "N" or character == "S"
			img = 3;
		
		if floor(image_index) >= img
		{
			state = states.jump
			if key_jump2
				vsp = -14
			else
				vsp = -8;
			
			jumpstop = 1;
			
			image_index = 0;
			if character == "S"
				sprite_index = spr_jump;
			else
				sprite_index = spr_machfreefall;
		}
	}
	
	image_speed = 0.35
}