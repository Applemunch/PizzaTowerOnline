function scr_player_freefall()
{
	landAnim = true
	vsp = 15
	
	if global.gameplay != 0
	{
		vsp = freefallvsp
		freefallvsp += 0.2
		if freefallvsp > 35
			freefallvsp = 35;
	}
	
	move = key_left + key_right;
	if !grounded
	{
		hsp = move * movespeed;

		
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
			if move != 0
		xscale = move
	
		if key_attack2 && character = "SP" && freefallsmash > 10
		{
			landAnim = false;
			mach2 = 35;
			momemtum = true;
			jumpstop = true;
			dir = xscale;
		
			scr_soundeffect(sfx_suplexdashSP)
		    movespeed = 10
		    sprite_index = spr_mach2jump
	    
			with instance_create(x, y, obj_mach3effect)
			{
				hspeed = 0;
			
				playerid = other.object_index
				image_index = other.image_index - 1
				image_xscale = other.xscale
				sprite_index = other.sprite_index
			}
			with instance_create(x, y, obj_mach3effect)
			{
				hspeed = -10;
			
				playerid = other.object_index
				image_index = other.image_index - 1
				image_xscale = other.xscale
				sprite_index = other.sprite_index
			}
		
			flash = true
		    state = states.mach2
		}
	
	}
    
	freefallsmash ++
	if freefallsmash > 10 &&  !instance_exists(superslameffectid) 
		with instance_create(x,y,obj_superslameffect)
		{
		playerid = other.object_index	
		other.superslameffectid = id
		}

	        //Normal
	    if grounded  && !(input_buffer_jump < 8) && (!place_meeting(x, y + 1, obj_destructibles)
		or (!place_meeting(x, y, obj_platform) && place_meeting(x, y + 1, obj_platform)))
	    {
			audio_stop_sound(sfx_groundpound)
			scr_soundeffect(sfx_groundpound)
			freefallsmash= 0
		
			if shotgunAnim = false
			sprite_index = spr_bodyslamland
			else
			sprite_index = spr_shotgunjump2

			image_index = 0
			state = states.freefallland
		    jumpAnim = true
		    jumpstop = false
    
		    with (obj_baddie)
			{
				if grounded && point_in_camera(x, y, view_camera[0]) && !invincible && groundpound
				{
					state = states.stun
					if stunned < 60
						stunned = 60
					vsp = -11
					image_xscale *= -1
					hsp = 0
					momentum = 0
				}
			}
	        with (obj_camera) {
			    shake_mag=10;
			    shake_mag_acc=30/room_speed;
			}
			
	    combo = 0
	    bounce = false
    

   

	    instance_create(x,y,obj_landcloud)
	    freefallstart = 0


	}

	image_speed = 0.35
}