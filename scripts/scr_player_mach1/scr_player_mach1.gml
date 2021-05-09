function scr_player_mach1()
{
	if character != "S"
	{
		mask_index = spr_player_mask;
		if scr_solid(x, y)
		{
			state = states.crouch;
			mask_index = spr_crouchmask;
			exit;
		}
	}
	
	dir = xscale
	move = key_left + key_right;

	landAnim = false
	if scr_solid(x+1,y) && xscale == 1 && !place_meeting(x+1,y,obj_slope)
	{
	    mach2 =0 
	    state = states.normal
		movespeed = 0
	}

	if scr_solid(x-1,y) && xscale == -1 && !place_meeting(x-1,y,obj_slope)
	{
	    mach2 =0 
	    state = states.normal
		movespeed = 0
	}
	
	machhitAnim = false
	crouchslideAnim = true

	if !place_meeting(x,y+1, obj_railh) && !place_meeting(x,y+1, obj_railh2)
	hsp = xscale * movespeed;
	else if place_meeting(x,y+1, obj_railh)
	hsp = xscale  * movespeed -5
	else if place_meeting(x,y+1, obj_railh2)
	hsp =xscale   * movespeed +5
	
	//Turn
	if  xscale == 1 && move == -1 
	{
		sprite_index = spr_mach1
	momemtum = false
	mach2 = 0
	movespeed = 6
	image_index = 0
	xscale = -1
	}

	if xscale == -1 && move == 1
	{
			sprite_index = spr_mach1
	momemtum = false
	mach2 = 0
	movespeed = 6
	image_index = 0
	xscale = 1
	}




	//Mach2

	if grounded
	{
	
	if movespeed <= 8
	movespeed += 0.075
	if movespeed >= 8
	{

	state = states.mach2
	with instance_create(x,y,obj_jumpdust)
	image_xscale = other.xscale
	}
	}

	//Fall off
	if !(grounded) && sprite_index != spr_airdash1 
	{
	sprite_index = spr_airdash2
	}

	if sprite_index = spr_airdash1 && floor(image_index) = image_number - 1
	sprite_index = spr_airdash2




	//Back to other states
	    //Normal
	    if (!key_attack && character != "S") or (character == "S" && move == 0)
	    {
	    state = states.normal
	    image_index = 0
    
	    }


	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 
	{
	vsp /= 10
	jumpstop = true
	}

	if grounded && vsp > 0
	{
	jumpstop = false
	}

	if scr_solid(x+xscale,y)  && !place_meeting(x+sign(hsp),y,obj_slope)
	{
		movespeed = 0
	state =states.normal	
	}


	image_speed = 0.5

    


	//Effects

	if !(instance_exists(dashcloudid)) && grounded
	with instance_create(x,y,obj_dashcloud)
	{
		image_xscale = other.xscale
	   other.dashcloudid = id
	
	}

		//Down slam
		/*
	if key_slap2 && key_down
	{
	image_index = 0
		state = states.freefallprep
		if character = "P"
		vsp = -5
		else
		vsp = -7
	}
	*/


	if grounded && sprite_index != spr_mach1 && vsp > 0
	{
	sprite_index = spr_mach1
	image_index = 0
	}


	//Jump
	if key_jump && grounded 
	{
	scr_soundeffect(sfx_jump)
	sprite_index = spr_airdash1
	dir = xscale
	momemtum = true
	vsp = -11


	jumpAnim = true
	image_index = 0
	}

	//Snick peelout
	    if key_attack && !scr_solid(x+xscale,y)  && character = "S" && grounded
	    {
	state = states.handstandjump

	movespeed = 0
	    }
	
		//Vigilante revolver
	if key_slap2 && character = "V"
	{
	vsp = -5
	state = states.revolver	
	image_index = 0
		sprite_index = spr_playerV_airrevolver
		image_index = 0
		instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
	scr_soundeffect(sfx_killingblow)
	}
	
		//Vigilante Dynamite
	if key_shoot2 && character = "V" && !instance_exists(obj_dynamite)
	{
		vsp = -5

	state = states.dynamite
	image_index = 0
	sprite_index = spr_playerV_dynamitethrow
		with instance_create(x,y,obj_dynamite)
		{
			image_xscale = other.xscale
			movespeed = other.movespeed + 4
			vsp = -6
		}
	}
	
	//Manual Freefall
	if key_down && !grounded
	{
		if shotgunAnim = false
		{
	image_index= 0
	state = states.freefallprep
	sprite_index = spr_bodyslamstart
	vsp =-5
		}
		else
		{
			image_index= 0
	state = states.freefallprep
	sprite_index = spr_player_shotgunjump1
	vsp = -5
	with instance_create(x +xscale*30,y+60,obj_shotgunbullet)
	{
	sprite_index = sprite10391
	spdh = -10
	spd = 0
	}
	with instance_create(x +xscale*30,y+60,obj_shotgunbullet)
	{
	sprite_index = sprite10391
	spdh = -10
	spd = 5
	}
	with instance_create(x +xscale*30,y+60,obj_shotgunbullet)
	{
	sprite_index = sprite10391
	spdh = -10
	spd = -5
	}
		}

	}
	
	//Taunt
	if key_taunt2 
	{
		scr_soundeffect(sfx_taunt)
		taunttimer = 20
		tauntstoredmovespeed = movespeed
		tauntstoredsprite = sprite_index
		tauntstoredstate = state
		state = states.backbreaker
	
		if supercharged = true && character != "S" && character != "V" && character != "G"
		{
			image_index = 0
			sprite_index = choose(spr_supertaunt1,spr_supertaunt2,spr_supertaunt3,spr_supertaunt4)
		}
		else
		{
			taunttimer = 20
			image_index = irandom(sprite_get_number(spr_taunt))
			sprite_index = spr_taunt
			image_speed = 0
		}
		instance_create(x,y,obj_taunteffect)	
	}
}