function scr_player_tacklecharge() {
	if baddiegrabbedID == 0 or baddiegrabbedID == obj_null
	{
		state = states.normal;
		exit;
	}

	if windingAnim < 2000 && character == "P"
	windingAnim ++

	if !place_meeting(x,y+1, obj_railh)&& !place_meeting(x,y+1, obj_railh2)
	hsp = xscale * movespeed;
	else if place_meeting(x,y+1, obj_railh)
	hsp = xscale * movespeed -5
	else if place_meeting(x,y+1, obj_railh2)
	hsp =xscale  * movespeed +5


	move2 = key_right2 + key_left2
	move = key_right + key_left


	movespeed = 10


	crouchslideAnim = true

	if movespeed < 24 && move = xscale
	{
	movespeed += 0.05
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


	//Jump
	if (input_buffer_jump < 8) && grounded 
	{
	image_index = 0
	sprite_index = spr_player_secondjump1
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
	if baddiegrabbedID.object_index = obj_player1 or baddiegrabbedID.object_index = obj_player2
	{

		with  (baddiegrabbedID) 
		{
	other.thrown = true
	instance_create(x,y,obj_slapstar)
	instance_create(x,y,obj_baddiegibs)
	other.flash = true

	x =other.x
	y = other.y
	state = states.hurt
	hsp = -image_xscale * 10
	vsp = -10
	alarm[8] = 60
	alarm[7] = 120
	 other.baddiegrabbedID  = obj_null
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
		instance_create(x,y,obj_slapstar)
		instance_create(x,y,obj_baddiegibs)
		flash = true
		global.combotime = 60
		global.hit += 1
		if other.object_index = obj_pizzaballOLD
		global.golfhit += 1
		alarm[1] = 5
		thrown = true
		x =other.x
		y = other.y
		state = states.stun
		hsp = -image_xscale * 10
		vsp = -10
		        with (obj_camera) {

		    shake_mag=3;
		    shake_mag_acc=3/room_speed;}
			 other.baddiegrabbedID  = obj_null
		}
	
	}
	    movespeed = 0
	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0

	    instance_create(x+10,y+10,obj_bumpeffect)

    
	   }

	sprite_index = spr_charge
	image_speed = 0.5

	    //Crouchslide
	if key_down && grounded
	{
	sprite_index = spr_crouchslip
	if character = "P"
	machhitAnim = false
	state = states.crouchslide

	}

	//Back to other states

	if !key_attack && move != xscale  && grounded
	{
		if character != "N" or (character == "N" && noisetype == 1)
		{
			image_index = 0
			state =states.machslide

			sprite_index =spr_machslidestart
		}
		else
			state = states.normal;
	}

	if move = -xscale  && grounded
	{
		if character != "N" or (character == "N" && noisetype == 1)
		{
			image_index = 0
			state =states.machslide

			sprite_index =spr_machslideboost
		}
		else
			state = states.normal;
	}

	if (move = xscale && !key_attack && grounded) 
	state = states.normal

	//Effect


	if !(instance_exists(dashcloudid)) && grounded
	with instance_create(x,y,obj_dashcloud)
	{
		image_xscale = other.xscale
	   other.dashcloudid = id
	
	}



}
