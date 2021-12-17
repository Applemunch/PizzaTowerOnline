function scr_player_mort()
{
	move = key_right + key_left

	if sprite_index != spr_player_mortattack
		hsp = movespeed * move
	else
		hsp = movespeed * xscale
	
	//Float
	if vsp > 1 && key_jump2 
		vsp = 1
	else if vsp > 8
		vsp = 8
	
	//Jump Stop
	if !key_jump2 && !jumpstop && vsp < 0.5 
	{
		vsp /= 10
		jumpstop = true
	}
	
	if scr_solidwall(x + hsp, y)
		movespeed = 0

	//Attack
	if key_slap2 && sprite_index != spr_player_mortattack 
	{
		image_index = 5
		sprite_index = spr_player_mortattack
	}

	if sprite_index == spr_player_mortattack
	{
		if floor(image_index) == 6
		{
			movespeed = 12;
			
			var dontspawn = false;
			with obj_morthitbox
				if playerid == other.object_index then dontspawn = true;
			
			if !dontspawn
			{
				with instance_create(x, y, obj_morthitbox)
				{
					playerid = other.object_index
					image_xscale = other.xscale
				}
			}
		}
		else if movespeed > 0
			movespeed -= 0.2
	}
	
	if sprite_index = spr_player_mortdash && floor(image_index) >= image_number -1
	{
		sprite_index = spr_player_mortidle
		grav = 0.25
	}

	if sprite_index = spr_player_mortattack && floor(image_index) >= image_number -1
		sprite_index = spr_player_mortidle

	//Jump
	if key_jump2 && grounded 
	{
		instance_create(x, y, obj_highjumpcloud2)
		jumpstop = false
		vsp = -11
	}

	if sprite_index != spr_player_mortattack && sprite_index != spr_player_mortdash 
	{
		if !grounded 
			sprite_index = spr_player_mortjump
		else if sprite_index == spr_player_mortjump
			sprite_index = spr_player_mortidle
	}

	//Movespeed
	if sprite_index != spr_player_mortattack
	{
		if move != 0 
		{
			if sprite_index == spr_player_mortidle
				sprite_index = spr_player_mortwalk;
			if xscale != move
			{
				movespeed = 0
				xscale = move
			}
			
			if movespeed < 10
				movespeed += 0.2
			else if floor(movespeed) == 10
				movespeed = 10
		}
		else
		{
			movespeed = 0;
			if sprite_index == spr_player_mortwalk
				sprite_index = spr_player_mortidle;
		}

		if movespeed > 10
			movespeed -= 0.2
	}
	
	// animation speed
	if sprite_index = spr_player_mortwalk
	{
		if movespeed >= 9
			image_speed = 0.7
		else if movespeed >= 6
			image_speed = 0.5
		else if movespeed >= 3
			image_speed = 0.3
	}
	else if key_jump2 && sprite_index == spr_player_mortjump
		image_speed = 0.5
	else 
		image_speed = 0.35
	
	//Effects
	if !instance_exists(obj_dashcloud) && grounded && hsp != 0
	with instance_create(x, y, obj_dashcloud)
		image_xscale = other.xscale
}
