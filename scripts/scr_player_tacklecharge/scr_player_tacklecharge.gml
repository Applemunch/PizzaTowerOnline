function scr_player_tacklecharge()
{
	if baddiegrabbedID == 0 or baddiegrabbedID == obj_null
	{
		state = states.normal;
		exit;
	}
	
	sprite_index = spr_charge
	image_speed = 0.5

	if windingAnim < 2000 && character == "P"
		windingAnim ++

	var railh = 0, railmeet = instance_place(x, y + 1, obj_railparent);
	if railmeet then railh = railmeet.spdh;
	hsp = xscale * movespeed + railh;

	move2 = key_right2 + key_left2
	move = key_right + key_left


	movespeed = 10


	crouchslideAnim = true

	if movespeed < 24 && move = xscale
		movespeed += 0.05





	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 
	{
		vsp /= 10
		jumpstop = true
	}

	if grounded && vsp > 0
		jumpstop = false


	//Jump
	if (input_buffer_jump < 8) && grounded 
	{
		image_index = 0
		//sprite_index = spr_player_secondjump1
		scr_soundeffect(sfx_jump)
		vsp = -11
	}

	//Input buffer jumping
	if key_jump
		input_buffer_jump = 0


 
	//Bump
	if (scr_solid(x+hsp,y)) && !place_meeting(x+hsp,y,obj_slope)  && !place_meeting(x+hsp,y,obj_destructibles)
	{
		if baddiegrabbedID != obj_null
		{
			if baddiegrabbedID.object_index == obj_otherplayer
			{
				with (baddiegrabbedID)
				{
					other.thrown = true
					repeat 3
					{
						instance_create(x,y,obj_slapstar)
						create_particle(x,y,particles.baddiegibs)
					}
					other.flash = true

					x = other.x
					y = other.y
					state = states.hurt
					hsp = -image_xscale * 10
					vsp = -10
					alarm[8] = 60
					alarm[7] = 120
				}
			}
			else if baddiegrabbedID != obj_null
			{
				with (baddiegrabbedID) 
				{	
					scr_soundeffect(sfx_hitenemy)
						
					grabbed = false
					grav = 0.5
					instance_create(x,y,obj_bangeffect)
					repeat 3
					{
						instance_create(x,y,obj_slapstar)
						create_particle(x,y,particles.baddiegibs)
					}
					flash = true
						
					global.combotime = 60
					global.hit += 1
						
					if other.object_index = obj_pizzaballOLD
						global.golfhit += 1
						
					alarm[1] = 5
					thrown = true
					x = other.x
					y = other.y
					state = states.stun
					hsp = -image_xscale * 10
					vsp = -10
						
					with (obj_camera)
					{
						shake_mag=3;
						shake_mag_acc=3/room_speed;
					}
				}
			}
		}
			
		movespeed = 0
		state = states.bump
		hsp = -2.5
		vsp = -3
		mach2 = 0
		image_index = 0
			
		if character == "SP"
		{
			state = states.jump;
			sprite_index = spr_machfreefall;
			jumpstop = true;
			jumpAnim = true;
			vsp = -8;
			
			if baddiegrabbedID.object_index != obj_otherplayer
			{
				baddiegrabbedID.hp--;
				if baddiegrabbedID.hp <= 0
					instance_destroy(baddiegrabbedID);
			}
		}
		instance_create(x+10,y+10,obj_bumpeffect)
		baddiegrabbedID = obj_null
	}
	
	//Crouchslide
	if key_down && grounded && character != "SP"
	{
		sprite_index = spr_crouchslip
		if character = "P"
			machhitAnim = false
		state = states.crouchslide
	}

	//Back to other states
	if ((!key_attack && move != xscale) or (move == -xscale)) && grounded && character != "SP"
	{
		if (character != "N" or (character == "N" && noisetype == 1))
		&& move == -xscale
		{
			image_index = 0
			state = states.machslide
			
			sprite_index = spr_machslidestart
		}
		else
			state = states.normal;
	}
	
	//Effect
	if !(instance_exists(dashcloudid)) && grounded
	with instance_create(x,y,obj_dashcloud)
	{
		image_xscale = other.xscale
		other.dashcloudid = id
	}
}