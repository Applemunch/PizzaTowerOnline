function scr_player_boots() {




	landAnim = false



	
		hsp = move * movespeed
	
		//Turn

	if dir != xscale
	{
	dir = xscale
	movespeed = 2 
	facehurt = false


	}

	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false
	{
	vsp /= 10
	jumpstop = true
	}

	//Hit head
	if scr_solid(x,y-1) && jumpstop = false && jumpAnim = true
	{
	vsp = grav
	jumpstop = true
	}


	//Input jumping

	if (grounded && (input_buffer_jump < 8) && !key_down && vsp > 0) 
	{
		jumpstop = false
	scr_soundeffect(sfx_jump)

	sprite_index = spr_playerV_bootsjump


	instance_create(x,y,obj_highjumpcloud2)

	vsp = -11

	image_index = 0

	}

	//Input buffer jumping
	if key_jump
	{
	input_buffer_jump = 0
	}

	if floor(image_index) = image_number -1 && 	sprite_index = spr_playerV_bootsjump
	{
		sprite_index = spr_playerV_bootsfall
	}


		move = key_left + key_right;
	
	//Change direction
	if move != 0 
	{
	xscale = move
	}

	if scr_solid(x+sign(hsp),y) && xscale == move && !place_meeting(x+xscale,y,obj_slope)
		movespeed = 0

	//Move animation
	if grounded && move != 0 && sprite_index = spr_playerV_bootsidle
	{
	sprite_index = spr_playerV_bootsmove	
	}
	else if grounded && move = 0 && sprite_index = spr_playerV_bootsmove
	sprite_index = spr_playerV_bootsidle	


	if !grounded && ( sprite_index != spr_playerV_bootsjump && sprite_index != spr_playerV_bootsfall)
	sprite_index = spr_playerV_bootsfall




	//Land anim
	if grounded && (sprite_index = spr_playerV_bootsfall or sprite_index = spr_playerV_bootsjump) && vsp > 0
	{
			sprite_index = spr_playerV_bootsland
			image_index = 0
	}

	if floor(image_index) = image_number -1 && 	sprite_index = spr_playerV_bootsland
	{
		sprite_index = spr_playerV_bootsidle
	}



	if !key_attack
	{
	state = states.normal	
	}
	//Movespeed

	if grounded
	{
	if move != 0 
	{
	if movespeed < 20
	{
	movespeed += 0.35
	}
	else if floor(movespeed)= 20
	{
	movespeed = 14
	}
	}
	else
	movespeed = 0

	if movespeed > 20
	movespeed -= 0.1
	}

	if move != 0 && grounded
	{

	xscale = move
	if movespeed < 6 && move != 0
	image_speed = 0.35
	else if movespeed > 6 && movespeed < 8
	image_speed = 0.45
	else
	image_speed = 0.60
	}
	else 
	image_speed = 0.35





	//Boots out anim
	if floor(image_index) >= image_number -1 && sprite_index == spr_playerV_bootsout 
		sprite_index = spr_playerV_bootsidle

	//Dive kick
	if key_down && movespeed > 12
	{
		image_index = 0
		grav = basegrav;
		sprite_index = spr_playerV_divekickstart
		machhitAnim = false
		state = states.crouchslide
	}


	//Vigilante Dynamite
	if key_shoot2 && character = "V"
	{
	state = states.dynamite
	image_index = 0
	sprite_index = spr_playerV_dynamitethrow
		with instance_create(x,y,obj_dynamite)
		{
			image_xscale = other.xscale
			movespeed = 6
			vsp = -6
		}
	}
	//Vigilante revolver
	if key_slap2 && character = "V"
	{

	state = states.revolver	
	image_index = 0
	sprite_index = spr_playerV_revolverstart
	vsp = -5
	}

	//Effect

	if movespeed = 12 && !instance_exists(speedlineseffectid)
	{
	
		with instance_create(x,y,obj_speedlines)
		{
			playerid = other.object_index
	other.speedlineseffectid = id
		}

	}

	if !(instance_exists(dashcloudid)) && grounded && move != 0
	with instance_create(x,y,obj_dashcloud)
	{
		image_xscale = other.xscale
	   other.dashcloudid = id
	
	}



}
