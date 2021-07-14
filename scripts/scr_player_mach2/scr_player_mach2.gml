function scr_player_mach2()
{
	if windingAnim < 2000 && character == "P"
		windingAnim++
	
	var railh = 0, railmeet = instance_place(x, y + 1, obj_railparent);
	if railmeet then railh = railmeet.spdh;
	hsp = xscale * movespeed + railh;


	move2 = key_right2 + key_left2
	move = key_right + key_left

	crouchslideAnim = true
	

	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 
	{
		vsp /= 10
		jumpstop = true
	}

	if grounded && vsp > 0
		jumpstop = false
	
	//Input buffer jumping
	if key_jump
		input_buffer_jump = 0

	//Jump
	if (input_buffer_jump < 8) && grounded && move != -xscale
	{
		input_buffer_jump = 8;
		
		image_index = 0
		sprite_index = spr_secondjump1
		scr_soundeffect(sfx_jump)

		vsp = -11
	}

	//Animations
	if grounded && vsp > 0
	{
		if machpunchAnim
		{
			if !punch && sprite_index != spr_machpunch1
			{
				image_index = 0;
				sprite_index = spr_machpunch1
			}

			if punch && sprite_index != spr_machpunch2
			{
				image_index = 0;
				sprite_index = spr_machpunch2
			}
			
			if floor(image_index) = image_number - 1 && sprite_index = spr_machpunch1
			{
				punch = true
				machpunchAnim = false
			}

			if floor(image_index) = image_number - 1 && sprite_index = spr_machpunch2
			{
				punch = false
				machpunchAnim = false
			}
		}
		else if sprite_index != spr_mach && sprite_index != spr_mach4 && sprite_index != spr_player_machhit
		&& sprite_index != spr_snick_tumble && (sprite_index != spr_snick_bodyslamstart or grounded)
		{
			if sprite_index != spr_rollgetup or character == "S"
				sprite_index = spr_mach
		}
	}
	if !grounded
	{
		machpunchAnim = false
		if sprite_index == spr_snick_tumble
			sprite_index = spr_snick_bodyslamstart;
	}
	
	//Mach Freefall
	//if !(grounded) && vsp > 0 
	//{
	//++machfreefall
	//if machfreefall > 30
	//state = states.machfreefall
	//} 
	//else
	//machfreefall = 0


	//Mach3
	if grounded
	{
		if movespeed < 8
			movespeed = 8;
		if movespeed < 12
		{
			/*
			if character == "SP"
				movespeed += 0.075
			else
			*/
				movespeed += 0.1

			if movespeed < 8
				movespeed += 1
		}
		else
		{
			movespeed = 12
			machhitAnim = false
			state = states.mach3 
			flash = true
			
			if sprite_index != spr_rollgetup
				sprite_index = spr_mach4
			with instance_create(x,y,obj_jumpdust)
				image_xscale = other.xscale
		}
	}

	//Machroll
	if key_down && !place_meeting(x,y,obj_dashpad) && (sprite_index != spr_mach2jump or character != "SP")
	{
		with instance_create(x,y,obj_jumpdust)
			image_xscale = other.xscale
		
		flash = false
		state = states.machroll
		vsp = 10
		
		if character = "V"
			sprite_index = spr_playerV_divekickstart 
	}
	
	//Climbwall
	if (!grounded && scr_solidwall(x + hsp, y) && (!place_meeting(x+hsp,y,obj_destructibles) or character == "V") && !place_meeting(x+sign(hsp),y,obj_slope))
	or (grounded && scr_solidwall(x + hsp, y - (global.gameplay == 0 ? 32 : 31)) && (!place_meeting(x+hsp,y,obj_destructibles) or character == "V")  && !place_meeting(x+hsp,y,obj_metalblock) && scr_slope())
	{
		if (!key_attack && character != "S") or (character == "S" && move == 0)
		{
			instance_create(x,y+43,obj_cloudeffect)
			
			vsp = -movespeed
			state = states.normal
			movespeed = 0
		}
		else
		{
			wallspeed = movespeed
			state = states.climbwall
		}
	}
  
	if grounded && !scr_slope() && scr_solid(x+hsp,y,false) && (!place_meeting(x+hsp,y,obj_destructibles) or character == "V") && !place_meeting(x+sign(hsp),y,obj_slope)
	{
		movespeed = 0
		state = states.normal	
	}


	//Effect
	if !(instance_exists(dashcloudid)) && grounded
	with instance_create(x,y,obj_dashcloud)
	{
		image_xscale = other.xscale
		other.dashcloudid = id
	}
	if !(instance_exists(speedlineseffectid)) && grounded && global.gameplay != 0
	with instance_create(x,y,obj_speedlines)
	{
		image_xscale = other.xscale
		other.speedlineseffectid = id
	}


	if grounded && floor(image_index) = image_number - 1 && sprite_index = spr_rollgetup
	{
		if character == "P"
			sprite_index = spr_player_machhit
		else
			sprite_index = spr_mach
	}

	if !grounded && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump && sprite_index != spr_walljumpstart && sprite_index != spr_walljumpend
	sprite_index = spr_secondjump1

	if floor(image_index) = image_number -1 && sprite_index = spr_secondjump1
	sprite_index = spr_secondjump2


	if floor(image_index) = image_number -1 && sprite_index = spr_walljumpstart && character != "S"
	sprite_index = spr_walljumpend



	//Snick peelout
	if key_attack  && !scr_solid(x+xscale,y,false) && character = "S" && grounded
	{
		state = states.handstandjump
		movespeed = 0
	}

	//Back to other states
	if (!key_attack && move != xscale && grounded && character != "S") or (character == "S" && move != xscale && grounded)
	{
		image_index = 0
		state = states.machslide
		scr_soundeffect(sfx_break)
		sprite_index =spr_machslidestart
	}

	if move == -xscale && grounded && character != "S" && vsp >= 0
	{
		scr_soundeffect(sfx_machslideboost)
		image_index = 0
		state = states.machslide
		
		sprite_index = spr_machslideboost
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

	if (move == xscale && !key_attack && grounded && character != "S") or (move == xscale && character == "S" && grounded && move == 0)
	{
		if character == "SP" && freefallstart == 1
		{
			scr_soundeffect(sfx_step)
			landAnim = true
			instance_create(x,y,obj_landcloud)
		    input_buffer_secondjump = 0
		    state = states.normal
		    jumpAnim = true
		    jumpstop = false
		    image_index = 0
		
		    freefallstart = 0
		}
		else
			state = states.normal
	}

	if !grounded
		freefallstart = 1
	else
		freefallstart = 0

	image_speed = 0.5
	
	//Taunt
	if key_taunt2 
		scr_player_taunt();
}
