function scr_player_firemouth()
{
	if sprite_index = spr_firemouthintro or sprite_index = spr_firemouthend
		mask_index = spr_crouchmask
	else
		mask_index = spr_player_mask

	move = key_left + key_right;

	//Input buffer jumping
	if key_jump
	{
		input_buffer_jump = 0
	}

	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false
	{
		vsp /= 2
		jumpstop = true
	}

	if grounded && vsp > 0
	{
		jumpstop = false
	}

	mach2 = 0
	landAnim = false
	
	if sprite_index = spr_firemouthintro && floor(image_index) = image_number -1
		sprite_index = spr_firemouth

	if sprite_index = spr_firemouth 
	{
		if movespeed <= 12
			movespeed += 0.2;
		hsp = floor(xscale * movespeed) + (move * 2);
	}
	else
	{
		hsp = 0
		movespeed = 0
	}


	if sprite_index = spr_firemouthend && floor(image_index) = image_number -1
	{
		alarm[5] = 2
		alarm[7] = 60
		hurted = true
		state = states.normal
		sprite_index = spr_idle
		image_index = 0
	}
	
	if global.gameplay == 0
	{
		if key_slap2 && sprite_index == spr_firemouth && sprite_index != spr_firemouthshoot && !instance_exists(obj_firemouth_projectile)
		{
			movespeed = 0
			image_index = 0
			sprite_index = spr_firemouthshoot
		}
	}

	if sprite_index = spr_firemouthshoot && floor(image_index) == 3 && !instance_exists(obj_firemouth_projectile)
	{
		//Fireball
		scr_soundeffect(sfx_enemyprojectile)
		with instance_create(x,y, obj_firemouth_projectile)
			image_xscale = other.xscale
	}
	
	if sprite_index = spr_firemouthshoot && floor(image_index) = image_number -1
	{
		sprite_index = spr_firemouth
		image_index = 0
	}
	
	//Turn
	if scr_solid(x + xscale,y) && hsp != 0 && !place_meeting(x+sign(hsp),y,obj_slope) && (!place_meeting(x + sign(hsp), y, obj_destructibles) or global.gameplay == 0)
	{
		instance_create(x + 10 * xscale, y + 10, obj_bumpeffect)
		xscale *= -1
		movespeed = movespeed  /2
	}

	//Jump
	if (input_buffer_jump < 8) && grounded && hsp != 0
		vsp = -11

	if sprite_index = spr_firemouth
	{
		if movespeed < 4 
			image_speed = 0.35
		else if movespeed > 4 && movespeed < 8
			image_speed = 0.45
		else
			image_speed = 0.60
	}
	else
		image_speed = 0.35

	if hsp != 0 && (floor(image_index) = 0 or floor(image_index) = 2 ) && steppy = false && grounded
		steppy = true
	if floor(image_index) != 0 && floor(image_index) != 2 
		steppy = false

	//Effects
	if !(instance_exists(obj_dashcloud)) && grounded && hsp != 0
		with instance_create(x,y,obj_dashcloud)
			image_xscale = other.xscale
}