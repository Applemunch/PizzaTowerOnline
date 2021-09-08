function scr_player_tumble()
{
	hsp = xscale * movespeed
	mask_index = spr_crouchmask

	if sprite_index = spr_tumblestart
		movespeed = 6
	else
		movespeed = 14

	if !scr_slope() && sprite_index = spr_tumblestart && floor(image_index) < 11
		image_index = 11
	
	if sprite_index = spr_tumblestart && floor(image_index) = image_number -1
		sprite_index = spr_tumble
	
	// bump
	if !grounded
		ledge_bump();
	
	if (scr_solidwall(x+xscale,y)
	&& !place_meeting(x+hsp,y,obj_destructibles)
	&& !place_meeting(x+hsp,y,obj_rollblock))
	or place_meeting(x,y,obj_timedgate)
	{
		if sprite_index != spr_tumbleend
		{
			scr_soundeffect(sfx_tumble4)
			sprite_index = spr_tumbleend
		}
		hsp = 0
		movespeed = 0
		image_index = 0
		
		state = states.bump;
	}

	//Input buffer jumping
	if key_jump
		input_buffer_jump = 0

	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5
	{
		vsp /= 2
		jumpstop = true
	}

	if grounded && vsp > 0
		jumpstop = false
	
	//Jump
	if (input_buffer_jump < 8) && grounded && hsp != 0 && !key_down
	{
		vsp = -9
		if global.gameplay != 0
			vsp = -11
		
		with instance_create(x, y, obj_highjumpcloud2)
			image_xscale = other.xscale
	}
	image_speed = 0.35
	
	//Effect
	if !instance_exists(dashcloudid) && grounded
	{
	    with instance_create(x, y, obj_dashcloud)
		{
		    image_xscale = other.xscale
		    other.dashcloudid = id
		}
	}
}