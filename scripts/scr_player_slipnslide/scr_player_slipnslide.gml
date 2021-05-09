function scr_player_slipnslide() {
	mach2 = 0



	jumpAnim = true
	dashAnim = true
	landAnim = false
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = false
	machhitAnim = false
	
	hsp = xscale * movespeed;
	
	if global.gameplay != 0
	{
		alarm[5] = 2
		alarm[8] = 60
		alarm[7] = 120
		hurted = true
	}
	
	machhitAnim = false

	crouchslideAnim = true




	//Back to other states
	//Normal
	if movespeed <= 0
	{
		state = states.normal
		movespeed = 0
		mach2 = 0
		image_index = 0
	}
	
	//Bump
	if (scr_solid(x+xscale,y)) && !place_meeting(x+sign(hsp),y,obj_slope)
	{
		if global.gameplay == 0
		{
			state = states.bump
			hsp = 2 * -xscale
			vsp = -3
			mach2 = 0
			image_index = 0
			instance_create(x+10 * xscale,y+10,obj_bumpeffect)
		}
		else
		{
			state = states.jump;
			vsp = -14;
			jumpstop = true;
		}
	}
	
	if global.gameplay == 0
	{
		if grounded
			movespeed -= 0.2
	}
	else
	{
		if scr_slope() && movespeed <= 0
			movespeed = 2;
	}
	
	//Animations
	image_speed = 0.35

	//Effects
	if !(instance_exists(obj_slidecloud)) && grounded && movespeed > 1.5 && sprite_index == spr_slipnslide
	with instance_create(x,y,obj_slidecloud)
		image_xscale = other.xscale

	if !(instance_exists(obj_slidecloud)) && grounded && movespeed > 1.5 && place_meeting(x, y + 1, obj_current)
	with instance_create(x,y,obj_slidecloud)
	{
		image_xscale = other.xscale
		sprite_index = spr_watereffect
	}
	
	if sprite_index == spr_Current && !place_meeting(x, y + 1, obj_current)
		sprite_index = spr_slipnslide
	if sprite_index == spr_slipnslide && place_meeting(x, y + 1, obj_current) && character == "P"
		sprite_index = spr_Current
}