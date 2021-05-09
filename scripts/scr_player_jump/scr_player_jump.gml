function scr_player_jump()
{
	if momemtum = false
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
	{
	movespeed += 0.5
	}
	else if floor(movespeed)= 6
	{
	movespeed = 6
	}
	}
	else
	movespeed = 0

	if movespeed > 6
	movespeed -= 0.1





	if ((scr_solidwall(x+1,y) && move == 1) or (scr_solidwall(x-1,y) && move == -1))
	{
	movespeed = 0
	}

	//Turn

	if dir != xscale 
	{

	dir = xscale

	}


	landAnim = true


	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false
	{
	vsp /= 10
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

	if move != 0
	xscale = move

		//Wallcling
	if character = "N"  && wallclingcooldown = 10 && global.gameplay == 0
	{
		if scr_solid(x+xscale,y)  && key_jump
		{
				scr_soundeffect(sfx_step)
			
		state = states.hang
		sprite_index = spr_playerN_wallclingstart
		image_index = 0
		xscale *= -1
		vsp = 0
		doublejump = false
		}
		else
		//Noise double jump
		if  key_jump && doublejump = false && sprite_index != spr_freefall && sprite_index != spr_facestomp
	{
		scr_soundeffect(sfx_woosh)
		jumpAnim = true
		sprite_index = spr_playerN_doublejump
		image_index = 0
		jumpstop = false
		vsp = -9
	with instance_create(x,y,obj_highjumpcloud2)
	image_xscale = other.xscale
	doublejump = true
	}
	
	}

	//Input jumping

	if (grounded && (input_buffer_jump < 8) && !key_down && !key_attack && vsp > 0) && !(sprite_index = spr_facestomp or sprite_index = spr_freefall)
	{
	scr_soundeffect(sfx_jump)

	if global.minutes = 0 && global.seconds = 0 && character == "P"
	sprite_index = spr_player_hurtjump
	else
	sprite_index = spr_jump


	if shotgunAnim = true
	{
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

	}


	///Back to other states


	    //Normal
	    if (grounded && vsp > 0) && (!key_attack or character == "S")
	    {
			scr_soundeffect(sfx_step)
		    if key_attack
		    {
		    landAnim = false
		    }
			instance_create(x,y,obj_landcloud)
		    input_buffer_secondjump = 0
		    state = states.normal
		    jumpAnim = true
		    jumpstop = false
		    image_index = 0

		    freefallstart = 0
	    }




	//Dynamite jump effect
		if floor(image_index) = image_number -1 && sprite_index = spr_playerV_superjump
		{
	with instance_create(x, y+25,obj_balloonpop)
	sprite_index= spr_shotgunimpact

		}
    
	//Input buffer jumping
	if key_jump
	{
	input_buffer_jump = 0
	}

	//Falling Animation

	if character != "S"
	{
		if vsp > 5
			fallinganimation ++

		if fallinganimation >= 40 && fallinganimation < 80
			sprite_index =spr_facestomp

		if fallinganimation >= 80 
			sprite_index =spr_freefall
	}




	//Animations
	if stompAnim = false
	{
	if jumpAnim = true
	{







	}

	if jumpAnim = false
	{
	
		if sprite_index = spr_playerN_doublejump
	sprite_index = spr_playerN_doublejumpfall
	
	if sprite_index = spr_airdash1
	sprite_index = spr_airdash2

	if sprite_index = spr_shotgunjump
	sprite_index = spr_shotgunfall

	if sprite_index = spr_playerV_superjump
	sprite_index = spr_playerV_fall

	if sprite_index = spr_jump
	sprite_index = spr_fall

	if sprite_index = spr_player_hurtjump
	sprite_index = spr_player_hurtjump2

	if sprite_index = spr_player_Sjumpstart
	sprite_index = spr_player_Sjump

	if sprite_index =spr_player_shotgunjump1
	sprite_index =spr_player_shotgunjump2

	if sprite_index = spr_shotgun_shootair
	sprite_index = spr_shotgun_fall
	
	if sprite_index = spr_suplexcancel
	sprite_index = spr_fall

	if sprite_index = spr_suplexland
	sprite_index = spr_fall

	}
	}

	if stompAnim = true
	{
	if sprite_index = spr_stompprep && floor(image_index) = image_number -1
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
	}

	//Manual Freefall
	if key_down2
	{
		if shotgunAnim == false
		{
			image_index= 0
			state = states.freefallprep
			sprite_index = spr_bodyslamstart
			if character != "N" && character != "V"
				vsp = -5
			else
				vsp = -7
		}
		else
		{
			scr_soundeffect(sfx_killingblow)
			image_index= 0
			state = states.freefallprep
			sprite_index = spr_shotgunjump1
			vsp = -5
			
			if character != "N"
			{
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
	}


	image_speed = 0.35


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
			scr_soundeffect(sfx_groundpound)
		    image_index = 0
			if character == "SP"
				sprite_index = spr_playerSP_machfreefallland
			else
				sprite_index = spr_bodyslamland
		    state = states.freefallland
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
	if key_slap2 && !suplexmove && (character != "S" && character != "V")
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
		
		if global.gameplay == 1
			instance_create(x, y, obj_crazyrunothereffect)
	}

	// Breakdance
	if key_shoot2 && !shotgunAnim && (character == "P" or character == "SP")
	{
		if !scr_checkskin(checkskin.p_anton)
		{
			if character != "SP" && global.gameplay == 0
			{
			    scr_soundeffect(sfx_breakdance);
			    vsp = -4;
				movespeed = 9;
			    state = states.punch;
			    sprite_index = spr_player_breakdancestart;
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
	if key_shoot2  && (shotgunAnim = true) 
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
			state = states.Sjumpprep
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
	if key_shoot2 && character = "N" && !shotgunAnim
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
	}





	if !key_attack or move != xscale
		mach2 = 0

	    //Land Mach1
	//Mach1
	if key_attack && grounded && fallinganimation < 40 && (!(character == "N" && noisetype == 0) && character != "S")
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
			movespeed = 21
			sprite_index = spr_crazyrun
			jumpAnim = true
			state = states.mach3
			movespeed = 20
		}
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
		if key_attack && character = "N"  && pogochargeactive = false && !key_slap2 && pizzapepper = 0 && noisetype == 0
		{
			sprite_index = spr_playerN_pogostart
			image_index = 0
			state = states.pogo

		}
	


	if floor(image_index) == image_number -1
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