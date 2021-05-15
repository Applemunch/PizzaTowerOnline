function scr_player_normal()
{
	mach2 = 0;
	move = key_left + key_right;
	skateboarding = false;
	momemtum = false;
	jumpstop = false;
	
	//Turn
	if dir != xscale
	{
		dir = xscale
		movespeed = 2 
		facehurt = false
	}

	if !place_meeting(x,y+1, obj_railh) && !place_meeting(x,y+1, obj_railh2)
		hsp = move * movespeed;
	else if place_meeting(x,y+1, obj_railh)
		hsp = move * movespeed -5
	else if place_meeting(x,y+1, obj_railh2)
		hsp = move * movespeed +5

	//Idles Anim
	if character != "S"
	{
		if move != 0
		{
			xscale = move
			
			//Movespeed
			if movespeed < 6
		        movespeed += 0.5;
		    else if floor(movespeed) == 6
		        movespeed = 6;
			
			var mv = movespeed / 6;
			image_speed = lerp(0.35, 0.6, floor(mv) + (floor(frac(mv) * 100) / 100)); // limit to 2 decimal places
			/*
		    if movespeed < 3
		        image_speed = 0.35;
		    else if movespeed > 3 && movespeed < 6
		        image_speed = 0.45;
		    else
		        image_speed = 0.6;
			*/
			
			if !machslideAnim && !landAnim && !shotgunAnim
			{
				machslideAnim = false
				idle = 0
				facehurt = false

				if mort
					sprite_index = spr_pmortwalk
				else if global.minutes <= 0 && global.seconds <= 0
					sprite_index = spr_hurtwalk
				else if global.stylethreshold == 2
		            sprite_index = spr_3hpwalk
		        else if global.stylethreshold >= 3
		            sprite_index = spr_ragemove
				else if angry && global.gameplay == 0
					sprite_index = spr_3hpwalk
				else
					sprite_index = spr_move
			}
		}
		else
		{
			image_speed = 0.35;
			movespeed = 0;
			if machslideAnim = false && landAnim = false && shotgunAnim = false
			{
			    if move == 0
			    {
				    if idle < 400
						idle++
					
					if idle >= 150
					{
					    if sprite_index != spr_idle && floor(image_index) = image_number - 1
					    {
						    facehurt = false
						    idle = 0
						    image_index = 0
					    }
						
					    if sprite_index != spr_idle1 && sprite_index != spr_idle2 && sprite_index != spr_idle3 && sprite_index != spr_idle4  && sprite_index != spr_idle5  && sprite_index != spr_idle6  && sprite_index != spr_player_idlelook
					    {
						    randomise()
							sprite_index = choose(spr_idle1, spr_idle2, spr_idle3, spr_idle4, spr_idle5, spr_idle6);
						    image_index = 0
					    }
					}
					else if facehurt
					{
						windingAnim = 0
						if sprite_index != spr_facehurtup && sprite_index != spr_facehurt
							sprite_index = spr_facehurtup
						if floor(image_index) == image_number - 1 && sprite_index == spr_facehurtup
							sprite_index = spr_facehurt
					}
					
				    if idle < 150 && !facehurt
				    {
						if windingAnim < 1800 or angry or global.playerhealth == 1
						{
							start_running = true
							movespeed = 0
							
							if sprite_index != spr_playerV_revolverend
							{
								if global.minutes <= 0 && global.seconds <= 0
									sprite_index = spr_hurtidle  
								else if global.panic or global.snickchallenge
									sprite_index = spr_panic
								else if global.stylethreshold == 2
				                    sprite_index = spr_3hpidle
				                else if global.stylethreshold >= 3
				                    sprite_index = spr_rageidle
								else if angry && global.gameplay == 0
				                    sprite_index = spr_3hpidle
								else
									sprite_index = spr_idle
							}
						}
						else
						{
							idle = 0
							windingAnim--
							sprite_index = spr_winding
						}
				    }					
			    }
			}
		}
	}
	if movespeed > 6
		movespeed -= 0.1
	
	if character == "S"
	{
		if !machslideAnim
		{
			image_speed = 0.35;
			if move == 0
			{
				if idle < 400
					idle++
				if idle >= 100
				{
					if sprite_index != spr_idle && floor(image_index) = image_number -1
					{
						idle = 0
						image_index = 0
					}
					if sprite_index != spr_idle1 
						sprite_index = spr_idle1
				}
				else
					sprite_index = spr_idle
			}
			if move != 0 
			{
				machslideAnim = false
				sprite_index = spr_move
				xscale = move
			}
		}
	}
	
	//Land Anim
	if landAnim
	{
	    if !shotgunAnim
	    {
		    if move == 0
		    {
			    movespeed = 0
			    sprite_index = spr_land
			    if floor(image_index) = image_number - 1
					landAnim = false
		    }
		    else
		    {
			    sprite_index = spr_land2
				
			    if floor(image_index) = image_number -1
			    {
				    landAnim = false
				    sprite_index = spr_move
				    image_index = 0
			    }
		    }
	    }
	    else
	    {
		    sprite_index = spr_shotgunland
		    if floor(image_index) = image_number - 1
		    {
			    landAnim = false
			    sprite_index = spr_move
			    image_index = 0
		    }
	    }
	}

	//MachSlide End Anim
	if machslideAnim
		sprite_index = spr_machslideend
	
	if floor(image_index) = image_number - 1
	{
		switch sprite_index
		{
			case spr_playerV_revolverend:
				sprite_index = spr_idle;
				break;
			case spr_shotgunshoot:
				sprite_index = spr_shotgunidle;
				break;
			case spr_machslideend:
				machslideAnim = false;
				break;
		}
	}

	if !landAnim && shotgunAnim && sprite_index != spr_shotgunshoot
		sprite_index = (move != 0 ? spr_shotgunwalk : spr_shotgunidle);
	
	if scr_solid(x+sign(hsp),y) && move == xscale && !place_meeting(x+xscale,y,obj_slope)
		movespeed = 0
	
	if grounded
	{
		//Jump
		if (key_jump or (input_buffer_jump < 8 && !key_attack && vsp > 0)) && !key_down
		{
			scr_soundeffect(sfx_jump)
			
			if shotgunAnim
				sprite_index = spr_shotgunjump
			else if global.minutes = 0 && global.seconds = 0 && character == "P"
				sprite_index = spr_player_hurtjump
			else
				sprite_index = spr_jump

			with instance_create(x,y,obj_highjumpcloud2)
				image_xscale = other.xscale
			
			stompAnim = false
			vsp = -11
		
			state = states.jump
			jumpAnim = true
			jumpstop = false
			image_index = 0

			freefallstart = 0
		}
	
		//Crouch
		if (key_down or scr_solid(x, y - 3)) && character != "S"
		{
			state = states.crouch
			landAnim = false
			crouchAnim = true
			image_index = 0
			idle = 0
		}
		
		//Snick peelout
		if key_attack && character = "S"
		{
			state = states.handstandjump
			movespeed = 0
		}
	}
	else if !key_jump
	{
		if !shotgunAnim
		{
			if global.minutes = 0 && global.seconds = 0 && character == "P"
				sprite_index = spr_player_hurtjump2
			else
				sprite_index = spr_fall
		}
		else 
			sprite_index = spr_shotgunfall
		
		jumpAnim = false
		state = states.jump
		image_index = 0
	}
	
	//Suplex Dash
	if key_slap2
	{
		if key_up && global.gameplay == 1
		{
			// Breakdance up
			if character == "P" or character == "SP"
			{
				scr_soundeffect(sfx_suplexdash);
				
				state = states.punch;
				image_index = 0;
				sprite_index = spr_breakdanceuppercut;
				vsp = -14;
				movespeed = 2;
				instance_create(x, y, obj_highjumpcloud2);
				instance_create(x, y, obj_swingdinghitbox);
			}
			else if character == "N"
			{
				state = states._throw
				image_index = 0
				sprite_index = spr_playerN_noisebombthrow
				with instance_create(x,y,obj_playerbomb)
				{
					depth = 2;
					
					movespeed = round((other.movespeed / 4) * 3);
		            if movespeed < 2
		                movespeed = 2;
		            vsp = -12;
		            image_xscale = other.xscale;
				}
			}
		}
		else if character != "S" && character != "V"
		{
			suplexmove = true
			if character != "SP"
				suplexdashsnd =	audio_play_sound(sfx_suplexdash,1,0)
			else
				scr_soundeffect(sfx_suplexdashSP);
	
			if !(character == "SP" && state == states.jump && vsp < 0)
			{
				state = states.handstandjump
				image_index = 0
				if shotgunAnim = false
					sprite_index = spr_suplexdash
				else
					sprite_index = spr_shotgunsuplexdash
				if character != "N"
					movespeed = 6
				else
					movespeed = 4
				
				if global.gameplay == 1
					instance_create(x, y, obj_crazyrunothereffect)
			}
			else
			{
			    movespeed = 10
			    sprite_index = spr_mach2jump
			    instance_create(x, y, obj_jumpdust)
			    state = states.mach2
			    vsp = -9
			}
		}
	}

	// Breakdance
	if key_shoot2 && !shotgunAnim && (character == "P" or character == "SP" or character == "G")
	{
		if !scr_checkskin(checkskin.p_anton)
		{
			if character != "SP" && global.gameplay == 0
			{
			    scr_soundeffect(sfx_breakdance);
			    movespeed = 9;
			    state = states.punch;
			    sprite_index = spr_player_breakdancestart;
			    with instance_create(x, y, obj_dashcloud2)
			        image_xscale = other.xscale;
			    breakdance = 35;
			    image_index = 0;
			    instance_create(x, y, obj_swingdinghitbox);
			}
		}
		else if !instance_exists(obj_antonball)
		{
			scr_soundeffect(sfx_enemyprojectile);
			with instance_create(x, y, obj_antonball)
			{
				hsp = 6 * other.xscale;
				if other.key_up
					vsp = -6;
				canhit = false;
				alarm[0] = 15;
			}
		}
		else
			instance_destroy(obj_antonball);
	}

	// Shotgun
	if key_shoot2 && shotgunAnim
	{
		scr_soundeffect(sfx_killingblow)
		state = states.shotgun
		with instance_create(x,y,obj_pistoleffect)
			image_xscale = other.image_xscale

		image_index = 0
		sprite_index = spr_shotgunshoot
		if character != "N"
		{
			instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
			with instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
				spdh= 4
			with instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
				spdh= -4
		}
	}
	
	//Jetpack flash
	if character == "N" && (pogochargeactive = true or pizzapepper > 0)
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


	//Noise Bomb
	if key_shoot2 && character = "N" && !shotgunAnim && global.gameplay == 0
	{
		state = states._throw
		sprite_index = spr_playerN_noisebombthrow
		image_index = 0
		scr_soundeffect(sfx_noisewoah)
		with instance_create(x,y,obj_playerbomb)
		{
			vsp = -7
		
			if !other.key_up
				movespeed = 7
			else
				vsp = -14
			
			image_xscale = other.xscale
		}
	}

	//Spin attack
	//if key_slap2 && character = "N" && !key_attack
	//{
	//	scr_soundeffect(sfx_Nspin)
	//		scr_soundeffect(sfx_suplexdash)
	//state = states.punch
	//sprite_index=  spr_playerN_spin
	//image_index = 0
	//movespeed = 15
	//}

	//Mach1
	if key_attack && !scr_solid(x+xscale,y)  && (!(character == "N" && noisetype == 0) && character != "S")
	{
		if pizzapepper = 0
		{
			movespeed = 6
			sprite_index = spr_mach1
			jumpAnim = true
			state = states.mach1
			image_index = 0
		}
		else
		{
			sprite_index = spr_crazyrun
			jumpAnim = true
			state = states.mach3
			movespeed = 20
		}
	}
	
	//Pogo
	if key_attack && character = "N"  && pogochargeactive = false && !key_slap2 && pizzapepper = 0 && noisetype == 0
	{
		sprite_index = spr_playerN_pogostart
		image_index = 0
		state = states.pogo
	}
	
	//Snick walk
	if character = "S" && move != 0 && !scr_solid(x+xscale,y) 
	{
		movespeed = 6
		sprite_index = spr_mach1
		jumpAnim = true
		state = states.mach1
		image_index = 0
	}

	//Vigilante Boots 
	//if key_attack && character = "V"
	//{
	//image_index = 0
	//sprite_index = spr_playerV_bootsout
	//state = states.boots
	//movespeed = 2
	//}

	//Vigilante Dynamite
	if key_shoot2 && character = "V" && !instance_exists(obj_dynamite)
	{
		if move = 0
			movespeed = 0
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
		if move = 0
			movespeed = 0
		state = states.revolver	
		image_index = 0
		sprite_index = spr_playerV_revolverstart
	}

	////Shoot gun
	//if key_shoot2 && !key_up 
	//{

	//sprite_index =spr_player_pistol
	//state = states.pistol
	//image_index = 0
	//shoot = true
	//}
	//else
	////Aim gun
	//if key_up && key_shoot2 && move = 0
	//{

	//sprite_index =spr_player_shootup
	//state = states.pistol
	//image_index = 0
	//shoot = true
	//}
	//else if key_up && key_shoot2 && move != 0
	//{

	//sprite_index =spr_player_shootdiagonal
	//state = states.pistol
	//image_index = 0
	//shoot = true
	//}
    
	   //Hookshot 
	//if key_slap2 && character = "N" 
	//{
	//image_index = 0
	//sprite_index = spr_playerN_hookshot1
	//state = states.hookshot

	//with instance_create(x,y + 10,obj_hookshot) 
	//{

	//hsp = other.xscale * 30
	//}

	//}

	//Effects
	var step1 = 3;
	var step2 = 8;
	if character == "SP"
	{
		step1 = 1;
		step2 = 5;
	}

	if move != 0 && (floor(image_index) = step1 or floor(image_index) = step2) && steppy = false && character != "V"
	{
		if scr_checkskin(checkskin.p_anton)
		{
			var stepsnd = scr_soundeffect(sfx_antonstep1, sfx_antonstep2, sfx_antonstep3);
			if character == "SP"
				audio_sound_pitch(stepsnd, 1.5);
		}
		instance_create(x,y+43,obj_cloudeffect)
		steppy = true
	}

	if move != 0 && floor(image_index) != step1 && floor(image_index) != step2
		steppy = false

	//if gamepad_button_value(0, gp_shoulderlb) != 0 && character = "N"
	//{
	//state = states.backbreaker
	//sprite_index = spr_taunt

	//}
	
	//Taunt
	if key_taunt2 
		scr_player_taunt();
}
