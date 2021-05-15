function scr_player_knightpep()
{
	alarm[5] = 2
	alarm[7] = 60
	
	global.SAGEknighttaken = true

	//Movement
	if (sprite_index = spr_knightpepwalk or sprite_index = spr_knightpepjump or sprite_index = spr_knightpepfall or sprite_index = spr_knightpepidle or (sprite_index == spr_knightpepland && global.gameplay != 0))
	{
		move = key_left + key_right;
		
		var railh = 0, railmeet = instance_place(x, y + 1, obj_railparent);
		if railmeet then railh = railmeet.spdh;
		hsp = move * movespeed + railh;
	}
	else if grounded 
	{
		hsp = 0
		move = 0
	}
	
	//Input buffer jumping
	if key_jump
		input_buffer_jump = 0

	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false
	{
		vsp /= 2
		jumpstop = true
	}


	if grounded && vsp > 0
		jumpstop = false


	//Turn
	if dir != xscale 
	{
		dir = xscale
		movespeed = 0 
	}


	//Walk/Idle
	if grounded && move != 0 && sprite_index =spr_knightpepidle
		sprite_index = spr_knightpepwalk
	else if grounded && move == 0 && sprite_index =spr_knightpepwalk
		sprite_index = spr_knightpepidle

	//Jump
	if ((input_buffer_jump < 8) && vsp > 0 ) && grounded && (sprite_index = spr_knightpepidle or sprite_index = spr_knightpepwalk) 
	{
		image_index = 0
		sprite_index = spr_knightpepjumpstart
	}

	if floor(image_index) = image_number -1 && sprite_index = spr_knightpepjumpstart
	{
		scr_soundeffect(sfx_jump)
		vsp = -11
		if key_right
			hsp = 4
		if -key_left
			hsp = -4
		
		sprite_index = spr_knightpepjump
	}
	
	//Movement Animations
	if (floor(image_index) = image_number -1 && sprite_index = spr_knightpepjump) 
	or (!grounded && sprite_index != spr_knightpepjump && sprite_index != spr_knightpepthunder) 
		sprite_index = spr_knightpepfall

	//Land
	if sprite_index == spr_knightpepfall && grounded && vsp > 0
	{
		with (obj_baddie)
		{
			if point_in_camera(x, y, view_camera[0])
			{
				vsp = -7
				hsp = 0
			}
		}
		
		with (obj_camera)
		{
			shake_mag=10;
			shake_mag_acc=30/room_speed;
		}
		combo = 0
		bounce = false
		

		image_index = 0

		freefallstart = 0


		momemtum = false
		scr_soundeffect(sfx_groundpound)
		instance_create(x,y,obj_landcloud)
		sprite_index = spr_knightpepland
	}

	if floor(image_index) = image_number -1 && sprite_index = spr_knightpepland
		sprite_index = spr_knightpepidle

	if move != 0
		xscale = move

	if scr_slope() && sprite_index != spr_knightpepthunder
	&& (!string_startswith(room_get_name(room), "etb_") or room == etb_5b)
	{
		with instance_place(x,y+1,obj_slope)
			other.xscale = -sign(image_xscale)
		state = states.knightpepslopes	
		sprite_index = spr_knightpepdownslope
	}

	//Movespeed
	if move != 0 
	{
		if movespeed < 6
		{
			movespeed += 0.5
		}
		else if movespeed = 6
		{
			movespeed = 6
		}
	}
	else
		movespeed = 0

	if move != 0 && hsp != 0
	{
		if movespeed < 1
			image_speed = 0.15
		else if movespeed > 1 && movespeed < 4
			image_speed = 0.35
		else
			image_speed = 0.60
	}
	else if sprite_index != spr_knightpepstart
		image_speed = 0.35


	//Start Animations
	if sprite_index == spr_knightpepstart
	{
		if floor(image_index) < image_number - 1
			image_speed = 0.35;
		else
			image_speed = 0;
		
		if floor(image_index) >= 4 && sprite_index == spr_knightpepstart && !instance_exists(obj_thunder)
			instance_create(x, y - 600, obj_thunder)
	}

	if floor(image_index) = image_number -1 && sprite_index = spr_knightpepthunder
		sprite_index = spr_knightpepidle

	//Effects
	if !(instance_exists(obj_cloudeffect)) && grounded && move != 0 && (floor(image_index) = 4 or floor(image_index) = 10)
		instance_create(x,y+43,obj_cloudeffect)
	if move != 0 && (floor(image_index) = 3 or floor(image_index) = 8) && steppy = false
		steppy = true

	if move != 0 && floor(image_index) != 3 && floor(image_index) != 8
		steppy = false
}