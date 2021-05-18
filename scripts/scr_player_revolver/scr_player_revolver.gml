function scr_player_revolver()
{
	var railh = 0, railmeet = instance_place(x, y + 1, obj_railparent);
	if railmeet then railh = railmeet.spdh;
	hsp = xscale * movespeed + railh;
	
	landAnim = false
	
	if grounded
	{
		if movespeed > 0
			movespeed -= 0.1
	}
	if floor(image_index) = image_number - 1 && sprite_index = spr_playerV_revolverstart
		sprite_index = spr_playerV_revolverhold

	if (sprite_index = spr_playerV_revolverhold or sprite_index = spr_playerV_airrevolverstart or sprite_index = spr_playerV_revolverstart) && !key_slap
	{
		if grounded
			sprite_index = spr_playerV_revolvershoot
		else
			sprite_index = spr_playerV_airrevolver
		
		image_index = 0
		instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
		scr_soundeffect(sfx_killingblow)

	}

	if floor(image_index) = image_number - 1 && sprite_index = spr_playerV_revolvershoot 
	{
		image_index = 0
		if scr_solid(x, y - 32)
			state = states.crouch
		else
			state = states.normal
		sprite_index = spr_playerV_revolverend
		movespeed = 2
	}

	if (sprite_index = spr_playerV_airrevolverend or sprite_index = spr_playerV_airrevolver or sprite_index = spr_playerV_airrevolverstart) && grounded
	{
		if key_attack && movespeed >= 6
		    state = states.mach2
		else 
			state = states.normal
	}

	if floor(image_index) = image_number - 1 && sprite_index = spr_playerV_airrevolver
	{
		if key_attack && movespeed >= 6
		    state = states.mach2
		else
		{
			image_index = 0
			state = states.normal
		}
	}

	image_speed = 0.4
}