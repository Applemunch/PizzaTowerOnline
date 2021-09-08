function scr_player_crouch()
{
	move = key_left + key_right;


	var railh = 0, railmeet = instance_place(x, y + 1, obj_railparent);
	if railmeet then railh = railmeet.spdh;
	hsp = move * movespeed + railh;


	movespeed = 4

	mask_index = spr_crouchmask
	turning = false
	
	//Fall off
	if !(grounded) && !key_jump  
	{
		jumpAnim = false
		state = states.crouchjump
		movespeed = 4
		crouchAnim = true
		image_index = 0
	}
	
	
	///Back to other states
	//Normal
	if grounded && !key_down && !scr_solid(x, y - 3) && !key_jump
	{
		state = states.normal
		movespeed = 0
		crouchAnim = true
		jumpAnim = true
    
		image_index = 0
		mask_index = spr_player_mask
	}




	//Animations

	if crouchAnim = false
	{
	if move == 0
	{
	if shotgunAnim = false
	sprite_index = spr_crouch
	else sprite_index = spr_shotgunduck
	}
	if move != 0
	{
		if shotgunAnim = false
	sprite_index =  spr_crawl
	else sprite_index = spr_shotguncrawl


	}
	}

	if crouchAnim = true
	{
	if move = 0
	{
	if shotgunAnim = false
	sprite_index = spr_couchstart
	else
	sprite_index = spr_shotgungoduck
	if floor(image_index) = image_number -1
	crouchAnim = false
	}
	}

	if move != 0
	{
	xscale = move
	crouchAnim = false
	}


	//Crouch Jump
	if key_jump && grounded && !(scr_solid(x,y-16)) && !(scr_solid(x,y-32)) 
	{
		scr_soundeffect(sfx_jump)
		vsp = -8
		state = states.crouchjump
		movespeed = 4
		image_index = 0
		crouchAnim = true
		jumpAnim = true
		
		with instance_create(x,y,obj_highjumpcloud2)
			image_xscale = other.xscale
	}

	if scr_slope() && key_down
	{
		movespeed = 14
		with instance_place(x+xscale,y+1,obj_slope)
			other.xscale = -sign(image_xscale)
	
		state = states.tumble
		sprite_index = spr_tumblestart
	}

	//Noise Bomb Kick
	if key_shoot2 && character = "N" && key_down && global.gameplay == 0
	{
		scr_soundeffect(sfx_noisewoah)
		state = states._throw
		sprite_index = spr_playerN_noisebombkick
		image_index = 0

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
			movespeed = 0
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


	image_speed = 0.45


}
