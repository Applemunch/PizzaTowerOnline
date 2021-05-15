function scr_player_punch()
{
	switch (character)
	{
		default:
			hsp = xscale * movespeed
			move = key_left + key_right
			jumpstop = 0
			
			if sprite_index == spr_breakdanceuppercut or sprite_index == spr_breakdanceuppercutend
			{
				hsp = move * movespeed;
				
				if floor(image_index) == image_number - 1
				{
					jumpstop = true;
					state = states.jump;
					sprite_index = spr_breakdanceuppercutend;
				}
				
				if grounded && vsp > 0
					state = states.jump;
			}
			
			if sprite_index == spr_player_breakdancesuper && key_shoot2
			    movespeed = 14
			
			if movespeed > 0 && sprite_index == spr_player_breakdance && grounded
			    movespeed -= 0.5
			
			if movespeed > 0 && sprite_index == spr_player_breakdancesuper
			    movespeed -= 0.25
			
			if scr_solidwall(x + xscale, y) && !place_meeting(x + xscale, y, obj_destructibles) && (sprite_index == spr_player_breakdancestart or sprite_index == spr_player_breakdance)
			    movespeed = 0
			
			if floor(image_index) == image_number - 1 && sprite_index == spr_player_breakdancestart
			    sprite_index = spr_player_breakdance
			
			if key_shoot2 && move == xscale && sprite_index == spr_player_breakdance
			{
			    image_index = 0
			    sprite_index = spr_player_buttattackstart
			    movespeed = 16
			    vsp = -5
				
			    if !instance_exists(crazyruneffectid)
			    {
			        with instance_create(x, y, obj_crazyrunothereffect)
			        {
			            playerid = other.object_index
			            other.crazyruneffectid = id
			        }
			    }
			}
			
			if floor(image_index) == image_number - 1 && sprite_index == spr_player_buttattackstart
			    sprite_index = spr_player_buttattack
			
			if grounded && sprite_index == spr_player_buttattack
			    sprite_index = spr_player_buttattackend
			
			if sprite_index == spr_player_buttattackend
			    movespeed -= 0.25
			
			if key_shoot2 && sprite_index == spr_player_breakdance && move == 0
			{
			    sprite_index = spr_player_breakdancesuper
			    movespeed = 12
			}
			
			if breakdance > 0
			    breakdance--
			
			landAnim = false
			if ((movespeed <= 0) && ((sprite_index == spr_player_breakdancesuper) || (sprite_index == spr_player_buttattackend)))
			    state = states.normal
			if breakdance <= 0 && sprite_index == spr_player_breakdance
			    state = states.normal
			if place_meeting((x + xscale), y, obj_solid) && (sprite_index == spr_player_breakdancesuper)
			    xscale *= -1
			
			if sprite_index == spr_player_breakdancesuper
			    image_speed = movespeed / 24
			else
			    image_speed = 0.4
			
			if sprite_index == spr_player_buttattack
			or sprite_index == spr_player_buttattackstart
			or sprite_index == spr_player_buttattackend
			{
			    if scr_solid(x + xscale, y)
				&& !place_meeting(x + sign(hsp), y, obj_slope)
				&& !place_meeting(x + xscale, y, obj_destructibles)
			    {
			        scr_soundeffect(sfx_bumpwall)
			        grav = 0.5
			        movespeed = 0
			        state = states.bump
			        hsp = 2.5 * -xscale
			        vsp = -3
			        mach2 = 0
			        image_index = 0
			        machslideAnim = true
			        machhitAnim = false
			        instance_create(x + 10 * xscale, y + 10, obj_bumpeffect)
			    }
			}
			if !instance_exists(obj_dashcloud2) && grounded && movespeed > 5
			{
			    with instance_create(x, y, obj_dashcloud2)
			        image_xscale = other.xscale
			}
			break
	
		case "S":
		
	move = key_left + key_right;


	if grounded
	{
		//Turn

		if dir != xscale
		{
		dir = xscale
		movespeed = 2 
		facehurt = false

		}


	jumpstop = false


		anger = 100
		if !place_meeting(x,y+1, obj_railh) && !place_meeting(x,y+1, obj_railh2)
		hsp = move * movespeed;
		else if place_meeting(x,y+1, obj_railh)
		hsp = move * movespeed -5
		else if place_meeting(x,y+1, obj_railh2)
		hsp = move * movespeed +5


		//Movespeed

		if move != 0 
		{
		if movespeed < 7
		{
		movespeed += 0.5
		}
		else if floor(movespeed)= 7 
		{
		movespeed = 7
		}
		}
		else
		movespeed = 0

		if movespeed > 7
		movespeed -= 0.1


	
		if move != 0
	{

	if movespeed < 3 && move != 0
	image_speed = 0.35
	else if movespeed > 3 && movespeed < 6 
	image_speed = 0.45
	else
	image_speed = 0.60
	}
	else 
	image_speed = 0.35
	
	}


	if !grounded
	{

		if momemtum = false
		hsp = move * movespeed;
		else
		hsp = xscale * movespeed

		if move != xscale && momemtum = true && movespeed != 0 
		{
		movespeed -= 0.05
		}

		if movespeed = 0
		momemtum = false

		if (move = 0 && momemtum = false) or scr_solid(x+(hsp),y)
		{
		movespeed = 0
		mach2 = 0
		}
		if move != 0 && movespeed < 7
		movespeed += 0.25
		if movespeed > 7 
		movespeed -= 0.05

		if ((scr_solid(x+1,y) && move == 1) or (scr_solid(x-1,y) && move == -1))
		{
		movespeed = 0
		}

		//Turn

		if dir != xscale 
		{
		mach2 = 0
		dir = xscale
		movespeed = 0 
		}
		if move = -xscale
		{
		mach2 = 0
		movespeed = 0 
		momemtum = false
		}

		landAnim = false


		//Jump Stop
		if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false
		{
		vsp /= 5
		jumpstop = true
		}

		//Ladder Buffer
		if ladderbuffer > 0
		ladderbuffer --

		//Hit head
		if scr_solid(x,y-1) && jumpstop = false && jumpAnim = true
		{
		vsp = grav
		jumpstop = true
		}
	

	
	
	
	}

	jumpAnim = true
	dashAnim = true
	landAnim = false

	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = true

	if floor(image_index) = image_number -1 or move = -xscale
	{
	state = states.normal
	}

	//Animations
	sprite_index = spr_punch
	image_speed = 0.35
	break
	case "N":

	hsp = xscale * movespeed
	move = key_left + key_right;

	momemtum = true
	dir = xscale



	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false 
	{
	vsp /= 10
	jumpstop = true
	}

	//Noise Bomb
	if key_slap2 && character = "N" 
	{
		state = states._throw
		sprite_index = spr_playerN_noisebombthrow
		image_index = 0
		with instance_create(x+hsp,y,obj_playerbomb)
		{
		movespeed = other.movespeed + 2
		vsp = -5
		image_xscale = other.xscale
		if scr_solid(x,y)
		{
		x = other.x
		y = other.y
		}
		}
	}



	if move != xscale && move != 0
	state = states.normal

	if floor(image_index) = image_number - 1
	state =states.normal

	if movespeed > 0
	movespeed -= 0.35

	//Jetpack flash
	if pogochargeactive = true
	{

		if key_attack2 
	{
		scr_soundeffect(sfx_noisewoah)
	state =states.Sjumpprep
	image_index = 0
	if !key_up
	sprite_index = spr_playerN_jetpackstart
	else
	sprite_index = spr_superjumpprep
	hsp = 0
	vsp = 0

	}
	
	}


		landAnim = false

	    //Crouchslide
	if key_down && grounded && vsp > 0
	{
		grav = 0.5
	sprite_index = spr_crouchslip

	machhitAnim = false
	state = states.crouchslide
	movespeed = 15
	}


	//Input buffer jumping
	if key_jump
	{
	input_buffer_jump = 0
	}

	if (grounded && (input_buffer_jump < 8) ) 
	{

	scr_soundeffect(sfx_jump)
	instance_create(x,y,obj_highjumpcloud2)

	vsp = -9

	}
	 //Bump
	    if (scr_solid(x+1,y) && xscale == 1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+xscale,y,obj_destructibles) 
	    {
			scr_soundeffect(sfx_bumpwall)
	    grav = 0.5
	    movespeed = 0
	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    machslideAnim = true
	    machhitAnim = false
	    instance_create(x+10,y+10,obj_bumpeffect)

	    }
	    if (scr_solid(x-1,y) && xscale == -1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+xscale,y,obj_destructibles) 
	    {
			scr_soundeffect(sfx_bumpwall)
	    grav = 0.5
	    movespeed = 0
	    state = states.bump
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    machslideAnim = true
	    machhitAnim = false
	    instance_create(x-10,y+10,obj_bumpeffect)

	    }
	

	
			//Pogo
		if key_attack2 && character = "N" &&  pogochargeactive = false
		{
			sprite_index = spr_playerN_pogostart
			image_index = 0
			state = states.pogo
			pogospeed = 8
		}
	
		//Effects
	if !(instance_exists(obj_slidecloud)) && grounded && movespeed > 5
	with instance_create(x,y,obj_slidecloud)
	image_xscale = other.xscale

	image_speed=  0.35

	break
	}


}
