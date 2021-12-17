function scr_player_jump()
{
	if !momemtum
		hsp = move * movespeed;
	else
		hsp = xscale * movespeed;

	if dir != xscale
	{
		dir = xscale
		movespeed = 2
		facehurt = false
	}

	if move != xscale
		movespeed = 2;
	move = key_left + key_right;

	if movespeed == 0
		momemtum = false;

	if scr_solidwall(x + hsp, y)
	{
		movespeed = 0;
		mach2 = 0;
	}

	//Movespeed
	if move != 0 
	{
		if movespeed < 6
			movespeed += 0.5
		else if floor(movespeed)= 6
			movespeed = 6
		
		if scr_solidwall(x + xscale, y) && move == xscale
			movespeed = 0
	}
	else
		movespeed = 0

	if movespeed > 6
		movespeed -= 0.1

	//Turn
	if dir != xscale 
		dir = xscale
	landAnim = true

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

	if move != 0
		xscale = move

	//Wallcling
	if character == "N" && wallclingcooldown == 10 && noisetype == 0
	{
		if scr_solid(x + xscale, y) && key_jump
		{
			scr_soundeffect(sfx_step)
			
			state = states.hang
			sprite_index = spr_playerN_wallclingstart
			image_index = 0
			xscale *= -1
			vsp = 0
			doublejump = false
		}
		
		//Noise double jump
		else if key_jump && !doublejump && sprite_index != spr_freefall && sprite_index != spr_facestomp
		{
			scr_soundeffect(sfx_woosh)
			jumpAnim = true
			sprite_index = spr_playerN_doublejump
			image_index = 0
			jumpstop = false
			vsp = -9
			with instance_create(x, y, obj_highjumpcloud2)
				image_xscale = other.xscale
			doublejump = true
		}
	}
	
	if global.mort && (sprite_index == spr_pmortjump or sprite_index == spr_pmortjumpstart)
	{
	    if vsp > 6
	        vsp = 6;
	    if !key_jump2
	    {
	        grav = 0.5;
	        sprite_index = spr_fall;
	    }
	}
	if key_jump
	{
	    if global.mort && sprite_index != spr_pmortjump
	    {
	        repeat 6 with instance_create(x, y, obj_debris)
				sprite_index = spr_feather;
			
	        scr_soundeffect(sfx_woosh);
	        sprite_index = spr_pmortjump;
	        image_index = 0;
	        jumpstop = 0;
	        grav = 0.25;
	        mort = 1;
	    }
	}
	if sprite_index != spr_pmortjump
		grav = 0.5;

	//Input jumping
	if (grounded && (input_buffer_jump < 8) && !key_down && !key_attack && vsp > 0) && !(sprite_index = spr_facestomp or sprite_index = spr_freefall)
	{
		input_buffer_jump = 8;
		scr_soundeffect(sfx_jump)
		
		if sprite_index != spr_shotgunshoot
		{
			if global.minutes <= 0 && global.seconds <= 0
			&& character == "P" && !instance_exists(obj_toppinwarrior)
				sprite_index = spr_player_hurtjump
			else
				sprite_index = spr_jump

			if shotgunAnim
				sprite_index = spr_shotgunjump
		}

		instance_create(x,y,obj_highjumpcloud2)
		stompAnim = false
		
		vsp = -11
		
		state = states.jump
		jumpAnim = true
		jumpstop = false
		image_index = 0
		movespeed = 2
		freefallstart = 0
		
		grav = 0;
	}


	///Back to other states

	//Normal
	if (grounded && vsp > 0) && (!key_attack or character == "S")
	{
		if suplexmove && character == "SP" && sprite_index != spr_suplexbump
			flash = true
		
		scr_soundeffect(sfx_step)
		if key_attack or sprite_index == spr_shotgunshoot
			landAnim = false
		if sprite_index == spr_pmortjump or sprite_index == spr_pmortjumpstart
			sprite_index = spr_pmortland;
		if sprite_index != spr_shotgunshoot
			image_index = 0;
		
		instance_create(x,y,obj_landcloud)
		input_buffer_secondjump = 0
		state = states.normal
		jumpAnim = true
		jumpstop = false

		freefallstart = 0
		grav = 0.5;
	}
	
	//Dynamite jump effect
	if floor(image_index) >= image_number -1 && sprite_index == spr_playerV_superjump
	{
		with instance_create(x, y + 25, obj_balloonpop)
			sprite_index = spr_shotgunimpact
	}
    
	//Input buffer jumping
	if key_jump
		input_buffer_jump = 0
	
	//Falling Animation
	if character != "S" && sprite_index != spr_pmortjump
	{
		if vsp > 5
			fallinganimation ++

		if fallinganimation >= 40 && fallinganimation < 80
			sprite_index = spr_facestomp

		if fallinganimation >= 80 
			sprite_index = spr_freefall
	}




	//Animations
	if !stompAnim
	{
		if !jumpAnim
		{
			if sprite_index == spr_playerN_doublejump
				sprite_index = spr_playerN_doublejumpfall
	
			if sprite_index == spr_airdash1
				sprite_index = spr_airdash2

			if sprite_index == spr_shotgunjump
				sprite_index = spr_shotgunfall

			if sprite_index == spr_playerV_superjump
				sprite_index = spr_playerV_fall

			if sprite_index == spr_jump
				sprite_index = spr_fall

			if sprite_index == spr_player_hurtjump
				sprite_index = spr_player_hurtjump2

			if sprite_index == spr_player_Sjumpstart
				sprite_index = spr_player_Sjump

			if sprite_index == spr_shotgunjump1
				sprite_index = spr_shotgunjump2
			
			if sprite_index == spr_shotgun_shootair
				sprite_index = spr_shotgun_fall
	
			if sprite_index == spr_suplexcancel
				sprite_index = spr_fall

			if sprite_index == spr_suplexland
				sprite_index = spr_fall

			if sprite_index == spr_shotgunshoot
				sprite_index = spr_shotgunfall

			if sprite_index == spr_stompprep
			{
				stompAnim = true
				sprite_index = spr_stomp
			}
		}
	}
	else
	{
		if sprite_index == spr_stompprep && floor(image_index) == image_number -1
			sprite_index = spr_stomp
	}

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
		grav = 0.5;
	}

	//Manual Freefall
	if key_down2
	{
		image_index = 0
		state = states.freefallprep
		if character != "N" && character != "V" && character != "SP"
			vsp = -5
		else
			vsp = -7
		
		if !shotgunAnim
			sprite_index = spr_bodyslamstart
		else
		{
			scr_soundeffect(sfx_killingblow)
			sprite_index = spr_shotgunjump1
			
			if character != "N" or global.gameplay != 0
			{
				with instance_create(x + xscale * 30, y + 60, obj_shotgunbullet)
				{
					sprite_index = sprite10391
					spdh = -10
					spd = 0
					shotgun = true
				}
				with instance_create(x + xscale * 30, y + 60, obj_shotgunbullet)
				{
					sprite_index = sprite10391
					spdh = -10
					spd = 5
					shotgun = true
				}
				with instance_create(x + xscale * 30, y + 60, obj_shotgunbullet)
				{
					sprite_index = sprite10391
					spdh = -10
					spd = -5
					shotgun = true
				}
			}
		}
		grav = 0.5;
	}
	
	image_speed = 0.3;
	if sprite_index == spr_suplexcancel or (jumpstop && jumpAnim && !stompAnim)
		image_speed = 0.4;

	//Chainsaw Pogo
	//if key_chainsaw2 && !grounded
	//{
	//with instance_create(x,y,obj_chainsawpogohitbox)
	//{
	//image_xscale = other.xscale
	//}
	//instance_create(x + (-xscale * 20),y+30,obj_chainsaweffect)
	//image_index = 0
	//sprite_index = spr_player_chainsawpogo1
	//state = states.chainsawpogo
	//}


	//Freefall
	if grounded && (sprite_index = spr_facestomp or sprite_index = spr_freefall)
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
		
		audio_stop_sound(sfx_groundpound)
		scr_soundeffect(sfx_groundpound)
		image_index = 0
		if character == "SP"
			sprite_index = spr_playerSP_machfreefallland
		else
			sprite_index = spr_bodyslamland
		state = states.freefallland
		grav = 0.5;
	}



	    //Suplex dash
	//    if key_slap2 && suplexmove = false && !key_down
	//    {

	//instance_create(x,y,obj_slaphitbox)
	//suplexmove = true
	//vsp = 0
	//instance_create(x,y,obj_jumpdust)
	//image_index = 0
	//sprite_index = spr_suplexdash
	//state = states.handstandjump
	//if character = "N"
	//vsp = -5
	//slapcharge = 0
	//    }







	//Suplex Dash
	if key_slap2 && (character != "S" && character != "V")
	{
		if key_up && global.gameplay != 0 && character == "SP" && sprite_index != spr_breakdanceuppercutend
		{
			// Breakdance up
			scr_soundeffect(sfx_suplexdash);
				
			state = states.punch;
			image_index = 0;
			sprite_index = spr_breakdanceuppercut;
			vsp = -7;
			movespeed = 2;
			instance_create(x, y, obj_highjumpcloud2);
			instance_create(x, y, obj_swingdinghitbox);
			
			grav = 0.5;
		}
		else if !suplexmove
		{
			suplexmove = true
			if character != "SP"
			{
				suplexdashsnd =	audio_play_sound(sfx_suplexdash,1,0)
				sprite_index = spr_suplexdashjumpstart
			
				if global.gameplay == 0
					vsp = -4
			}
			else
			{
				scr_soundeffect(sfx_suplexdashSP);
				sprite_index = spr_suplexdash
			}
			state = states.handstandjump
			image_index = 0

			if character = "P" or character == "SP"
				movespeed = 6
			else
				movespeed = 4
		
			if global.gameplay != 0
				instance_create(x, y, obj_crazyrunothereffect)
			grav = 0.5;
		}
	}

	// Breakdance
	if key_shoot2 && !shotgunAnim
	{
		if scr_checkskin(checkskin.p_anton)
		{
			if !instance_exists(obj_antonball)
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
		else if global.gameplay == 0
		{
			if character == "P"
			{
				scr_soundeffect(sfx_breakdance);
				vsp = -4;
				movespeed = 9;
				state = states.punch;
				sprite_index = spr_player_breakdancestart;
				breakdance = 35;
				image_index = 0;
				instance_create(x, y, obj_swingdinghitbox);
						
				grav = 0.5;
			}
		}
		else
		{
			if global.mort
		    {
		        with instance_create(x + xscale * 20, y, obj_shotgunbullet)
				{
			        image_xscale = other.xscale;
			        sprite_index = spr_mortprojectile;
				}
				
				sprite_index = spr_pmortthrow
				image_index = 0
				state = states.pistol
				mort = true
				
				with obj_camera
				{
				    shake_mag = 3
				    shake_mag_acc = 3 / room_speed
				}
		    }
			else if (character == "P" or character == "N") && global.bullet > 0
			{
				if !scr_solid_player(x + xscale * 20, y) or place_meeting(x + xscale * 20, y, obj_destructibles)
				{
					global.bullet--;
					sprite_index = spr_pistolshot
					image_index = 0
					state = states.pistol
					shot = true
					
					with obj_camera
					{
						shake_mag = 3;
						shake_mag_acc = 3 / room_speed;
					}
					
					scr_soundeffect(sfx_killingblow);
					if character == "N"
					{
						with instance_create(x, y, obj_playerbomb)
						{
			                kick = true
			                movespeed = 15
			                image_xscale = other.xscale
						}
					}
					else
					{
						with instance_create(x + xscale * 20, y, obj_shotgunbullet)
						{
							while scr_solid(x, y)
								y++;
			                pistol = true
							if other.character == "P"
								sprite_index = spr_peppinobullet
			                image_xscale = other.xscale
						}
					}
				}
				else
				{
					image_index = 0
					state = states.bump
					hsp = -xscale * 2
					vsp = -2
				}
			}
		}
	}

	// Shotgun
	if shotgunAnim && state == states.jump
	{
		if shoot_buffer <= 0 && key_shoot2
		{
			grav = 0.5;
			if global.gameplay == 0
			{
				// shoot in old gameplay
				state = states.shotgun
				
				with instance_create(x+xscale*20,y+20,obj_shotgunbullet)
					shotgun = true;
				if character != "N"
				{
					with instance_create(x+xscale*20,y+20,obj_shotgunbullet)
					{
						spdh= 4
						shotgun = true;
					}
					with instance_create(x+xscale*20,y+20,obj_shotgunbullet)
					{
						spdh= -4
						shotgun = true;
					}
				}
			}
			else
			{
				// shoot in new gameplay
				shoot_buffer = shoot_max;
				with instance_create(x + xscale * 20, y + 20, obj_shotgunbullet)
				{
					image_xscale = other.xscale;
					shotgun = true;
				}
				with instance_create(x + xscale * 20, y + 20, obj_shotgunbullet)
				{
					image_xscale = other.xscale;
					shotgun = true;
					spdh = 4;
				}
				with instance_create(x + xscale * 20, y + 20, obj_shotgunbullet)
				{
					image_xscale = other.xscale;
					shotgun = true;
					spdh = -4;
				}
			}
			
			// detail
			jumpAnim = true;
			
			sprite_index = spr_shotgunshoot;
			image_index = 0;
			scr_soundeffect(sfx_killingblow);
			
			with instance_create(x, y, obj_pistoleffect)
				image_xscale = other.xscale;
		}
	}
	
	//Jetpack flash
	if character == "N" && pogochargeactive or pizzapepper > 0
	{
		if key_attack2
		{
			scr_soundeffect(sfx_noisewoah)
			state = states.Sjumpprep
			image_index = 0
			if !key_up
				sprite_index = spr_playerN_jetpackstart
			else
				sprite_index = spr_superjumpprep
			hsp = 0
			vsp = 0
			
			grav = 0.5;
		}
	
	}


	//Noise Bomb
	if key_shoot2 && character = "N" && !shotgunAnim && global.gameplay == 0
	{
		scr_soundeffect(sfx_noisewoah)
		state = states._throw
		sprite_index = spr_playerN_noisebombthrow
		image_index = 0
		with instance_create(x,y,obj_playerbomb)
		{
			movespeed = 7
			vsp = -7
			image_xscale = other.xscale
		}
		grav = 0.5;
	}
	
	if !key_attack or move != xscale
		mach2 = 0

	//Land Mach1
	if key_attack && grounded && fallinganimation < 40 && (!(character == "N" && noisetype == 0) && character != "S")
	{
		if pizzapepper == 0
		{
			movespeed = 6
			sprite_index = spr_mach1
			jumpAnim = true
			state = states.mach1
			image_index = 0
		}
		else
		{
			movespeed = 21
			sprite_index = spr_crazyrun
			jumpAnim = true
			state = states.mach3
			movespeed = 20
		}
		grav = 0.5;
	}

	//Vigilante Boots 
	//if key_attack && character = "V" && grounded
	//{
	//image_index = 0
	///sprite_index = spr_playerV_bootsout
	//state = states.boots
	//movespeed = 2
	//}



	//Pogo
	if key_attack && character == "N" && state != states.Sjumpprep && !key_slap2 && pizzapepper <= 0 && noisetype == 0
	{
		sprite_index = spr_playerN_pogostart
		image_index = 0
		state = states.pogo
		grav = 0.5;
	}

	if floor(image_index) >= image_number -1
		jumpAnim = false
	
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
		grav = 0.5;
	}
	
	//Taunt
	if key_taunt2 
		scr_player_taunt();
	
	if sprite_index == spr_shotgunshoot
	{
	    landAnim = false
	    machslideAnim = false
	    image_speed = 0.45
		
	    if image_index > image_number - 1
	        sprite_index = spr_shotgunfall
	}
}