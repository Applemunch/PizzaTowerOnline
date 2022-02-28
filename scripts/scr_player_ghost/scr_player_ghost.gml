function scr_player_ghost() {
	move = key_right + key_left

	if sprite_index != spr_ghostend && sprite_index != spr_ghostdash
		hsp = movespeed * move

	//Turn

	if dir != xscale
	{
		dir = xscale
		movespeed = 2 
		facehurt = false
	}

	//Fall more slowly
	if vsp > 5 && !key_down
	vsp = 5
	else if vsp > 10 && key_down
	vsp = 10

	image_speed = 0.35

	if sprite_index != spr_ghostend && sprite_index != spr_ghostdash
	if key_jump
	{
		vsp = -8
		instance_create(x,y+20,obj_cloudeffect)
		image_index = 0
		sprite_index = spr_ghostjump

	}

	//Transparent 
	if place_meeting(x,y,obj_ghosttransparency) && sprite_index != spr_ghostend
		image_alpha = 0.5
	else
		image_alpha = 1
	
	//Bounce 
	if scr_solid_player(x, y + 1) && sprite_index != spr_ghostend && sprite_index != spr_ghostdash
	{
		vsp = -5
		instance_create(x,y+43,obj_cloudeffect)
	}
	
	//Sprites
	if sprite_index = spr_ghostjump && floor(image_index) = image_number -1
		sprite_index = spr_ghostidle

	//Tombstone
	if place_meeting(x,y,obj_tombstone) && sprite_index != spr_ghostend 
	{
		vsp = 10
		image_alpha = 1
		hsp = 0
		image_index = 0
		grav = basegrav
		movespeed = 0
		sprite_index = spr_ghostend
		
		with instance_place(x,y,obj_tombstone)
		{
			other.x = x
			other.y = y
		}
	}

	if sprite_index = spr_ghostend  && floor(image_index) = image_number -1
	state = states.normal

	//Movespeed

	if move != 0 && sprite_index != spr_ghostend && sprite_index != spr_ghostdash
		xscale = move
	
	if key_attack && global.gameplay != 0
	{
		if sprite_index == spr_ghostidle
		{
			sprite_index = spr_ghostdash;
			with instance_create(x,y,obj_jumpdust)
				image_xscale = other.xscale
		}
		if sprite_index == spr_ghostdash
		{
			hsp = 12 * xscale;
			vsp = 0;
			grav = 0;
		}
	}
	else if sprite_index == spr_ghostdash
	{
		sprite_index = spr_ghostidle;
		grav = 0.25;
		
		if move != 0
			movespeed = 8;
	}
	
	if move != 0 
	{
		if movespeed < 8
		{
			movespeed += 0.3
		}
		else if floor(movespeed)= 8
		{
			movespeed = 8
		}
	}
	else
		movespeed = 0

	if movespeed > 8
	movespeed -= 0.1


}
