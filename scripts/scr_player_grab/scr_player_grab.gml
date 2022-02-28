function scr_player_grab()
{
	if baddiegrabbedID == 0 or baddiegrabbedID == obj_null or !instance_exists(baddiegrabbedID)
	{
		state = states.normal;
		exit;
	}
	else with baddiegrabbedID
	{
		grabbed = true;
		state = states.grabbed;
		grabbedby = 1;
	}
	
	grav = basegrav
	move = key_left + key_right;
	
	if grounded
	{
		//Turn
		if dir != xscale && sprite_index != spr_swingding
		{
			dir = xscale
			if baddiegrabbedID.object_index != obj_pizzaballOLD
				movespeed = 2 
			
			facehurt = false
		}
		jumpstop = false
		anger = 100
		
		var railh = 0, railmeet = instance_place(x, y + 1, obj_railparent);
		if railmeet then railh = railmeet.spdh;
		
		if sprite_index != spr_swingding or global.gameplay == 0
			hsp = move * movespeed + railh;
		else
			hsp = xscale * movespeed + railh;

		//Movespeed
		if sprite_index != spr_swingding or global.gameplay == 0
		{
			if heavy == false
			{
				if move != 0
				{
					if movespeed < 6
						movespeed += 0.5
					else if floor(movespeed) == 6 
						movespeed = 6
				}
				else
					movespeed = 0

				if movespeed > 6
					movespeed -= 0.1
			}
			else
			{
				if move != 0
				{
					if movespeed < 4
						movespeed += 0.25
					else if floor(movespeed) == 4
						movespeed = 4
				}
				else
					movespeed = 0
				
				if movespeed > 4
					movespeed -= 0.1
			}
		}
		
		if sprite_index != spr_swingding
		{
			if baddiegrabbedID.object_index == obj_pizzaballOLD
				movespeed = 0;
			if move != 0
				xscale = move;
		}
	
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
	
	if sprite_index != spr_swingding or global.gameplay == 0
	{
		if !grounded
		{
			if dir != xscale && sprite_index != spr_swingding
			{
				dir = xscale

				if baddiegrabbedID.object_index != obj_pizzaballOLD
					movespeed = 2
				facehurt = false
			}
			
			if move != xscale && baddiegrabbedID.object_index != obj_pizzaballOLD
				movespeed = 2
			
			if momentum = false
				hsp = move * movespeed;
			else
				hsp = xscale * movespeed

			if move != xscale && momentum = true && movespeed != 0 
				movespeed -= 0.05

			if movespeed = 0
				momentum = false

			if move != 0 && movespeed < 6
				movespeed += 0.5
			if movespeed > 6 
				movespeed -= 0.5

			if ((scr_solid(x+1,y) && move == 1) or (scr_solid(x-1,y) && move == -1))
				movespeed = 0
		}
		
		//Turn
		if dir != xscale && sprite_index != spr_swingding
		{
			dir = xscale
			if baddiegrabbedID.object_index != obj_pizzaballOLD
				movespeed = 2 
			facehurt = false
		}
		
		if move = -xscale
		{
			mach2 = 0
			momentum = false
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
		
		if sprite_index != spr_swingding
		{
			if baddiegrabbedID.object_index == obj_pizzaballOLD
				movespeed = 0;
			if move != 0
				xscale = move
		}
	}
	else
	{
		hsp = xscale * movespeed;
		
	    if scr_solid(x + xscale, y)
		&& !place_meeting(x + sign(hsp), y, obj_slope)
		&& !place_meeting(x + sign(hsp), y, obj_destructibles)
	        xscale *= -1;
		
	    if swingdingbuffer == 0 && !key_attack
	        swingdingbuffer = -1;
	    if swingdingbuffer == -1
	        movespeed = Approach(movespeed, 0, 0.5);
		
	    if movespeed == 0
	        sprite_index = spr_haulingidle;
	}
	
	//Input buffer jumping
	if key_jump
		input_buffer_jump = 0

	//Input jumping
	if (grounded && (input_buffer_jump < 8) && !key_down && !key_attack && vsp > 0 ) && sprite_index != spr_swingding
	{
		scr_soundeffect(sfx_jump)
		sprite_index = spr_haulingjump
		instance_create(x,y,obj_highjumpcloud2)
		if heavy = false
			vsp = -11
		else
			vsp = -6
		image_index = 0
	}

	//Animations
	//Walk
	if grounded && move != 0 && sprite_index = spr_haulingidle && baddiegrabbedID.object_index != obj_pizzaballOLD
		sprite_index = spr_haulingwalk
	else if grounded && move = 0 && sprite_index = spr_haulingwalk
		sprite_index = spr_haulingidle

	if (sprite_index = spr_haulingstart && floor(image_index) = image_number - 1) 
		sprite_index = spr_haulingidle

	//Fall
	if (sprite_index = spr_haulingjump && floor(image_index) = image_number - 1) 
	or (!grounded && (sprite_index = spr_haulingwalk or sprite_index = spr_haulingidle))
		sprite_index = spr_haulingfall
	
	//Land
	if grounded && vsp > 0 && (sprite_index == spr_haulingfall or sprite_index == spr_haulingjump)
	{
		scr_soundeffect(sfx_step)
		instance_create(x, y, obj_landcloud)
		
		image_index = 0
		sprite_index = spr_haulingland
		//movespeed = 2
	}

	if sprite_index = spr_haulingland && floor(image_index) >= image_number - 1
		sprite_index = spr_haulingidle
	
	//Swing Ding
	if global.gameplay == 0
	{
		if move != 0 && move != lastmove && swingdingbuffer < 300
		{
			lastmove = move
			swingdingbuffer += 50
		}
		
		if swingdingbuffer > 0
			swingdingbuffer -= 1;
		
		if sprite_index = spr_swingding && swingdingbuffer < 150
			state = states.normal
		
		if swingdingbuffer > 300 && sprite_index != spr_swingding
		{
			sprite_index = spr_swingding

			with instance_create(x,y,obj_swingdinghitbox)
			playerid = other.object_index
			flash = true
		}
	}
	
	if key_attack && sprite_index != spr_swingding
	{
		if global.gameplay == 0
		{
			state = states.tacklecharge	
			sprite_index = spr_charge
			scr_soundeffect(sfx_suplexdash)
		}
		else
		{
			if move != 0
				xscale = move
			swingdingbuffer = 0;
			sprite_index = spr_swingding;
			movespeed = 12;
			flash = true;
			instance_create(x, y, obj_swingdinghitbox);
			
			//Jump Stop
			if !key_jump2 && vsp < 0.5
				vsp /= 10;
		}
		
		if baddiegrabbedID.object_index == obj_pizzaballOLD
			global.golfhit += 1;
		with instance_create(x,y,obj_jumpdust)
			image_xscale = other.xscale
	}
	
	if swingdingbuffer > 0 && global.gameplay != 0
	{
	    swingdingbuffer--;
	    if movespeed > 0
	        movespeed -= 0.1;
	}
	
	//Throws
	if key_slap2 && (sprite_index != spr_swingding or global.gameplay == 0)
	{
		if move != 0
			move = xscale
		state = states.finishingblow
		if sprite_index = spr_swingding
			sprite_index = spr_swingdingend
		else if !key_up
			sprite_index = choose(spr_finishingblow1,spr_finishingblow2,spr_finishingblow3,spr_finishingblow4,spr_finishingblow5)
		else if key_up
			sprite_index = spr_uppercutfinishingblow
	
		image_index = 0
		hsp = 0
		movespeed = 0
	}
	
	if key_down && !grounded
	{
		if character == "SP"
		{
			scr_soundeffect(sfx_jump);
			sprite_index = spr_playerSP_piledriverstart;
		}
		else
			sprite_index = spr_piledriver;
		
		vsp = -6;
		state = states.superslam;
		image_index = 0;
		image_speed = 0.35;
	}
	
	//Effects
	var step1 = 4;
	var step2 = 10;
	if character == "SP"
	{
		step1 = 2;
		step2 = 6;
	}

	if !(instance_exists(obj_cloudeffect)) && grounded && move != 0 && (floor(image_index) = step1 or floor(image_index) = step2) && baddiegrabbedID.object_index != obj_pizzaballOLD
		instance_create(x,y+43,obj_cloudeffect)
	
	//Crouch
	if key_down && grounded
	{
		state = states.crouch
		landAnim = false
		crouchAnim = true
		image_index = 0
		idle = 0
	}

	if move != 0 && (floor(image_index) = 3 or floor(image_index) = 8) && steppy = false
		steppy = true

	if move != 0 && floor(image_index) != 3 && floor(image_index) != 8
		steppy = false
	
	if sprite_index != spr_swingding
		image_speed = 0.35
	else if global.gameplay == 0
		image_speed = swingdingbuffer / 600
	else
		image_speed = 0.6;
}
