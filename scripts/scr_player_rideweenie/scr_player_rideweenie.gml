function scr_player_rideweenie()
{
	hsp = xscale * movespeed
	
	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 
	{
		vsp /= 10
		jumpstop = true
	}

	if grounded && vsp > 0
		jumpstop = false

	if grounded && movespeed != 14
		movespeed = 14
	
	//Jump
	if (input_buffer_jump < 8) && grounded 
	{
		scr_soundeffect(sfx_jump)
		instance_create(x,y,obj_highjumpcloud2)
		vsp = -11
	}

	//Input buffer jumping
	if key_jump
		input_buffer_jump = 0

	//Bump
	if scr_solid(x+hsp, y) && !place_meeting(x+hsp,y,obj_slope) && !place_meeting(x + hsp, y, obj_destructibles)
	{
		with instance_create(x,y,obj_sausageman_dead)
			sprite_index = spr_weeniemount_dead

		sprite_index = spr_hitwall
		scr_soundeffect(sfx_groundpound)
		scr_soundeffect(sfx_bumpwall)
		
		with (obj_camera)
		{
		    shake_mag=20;
		    shake_mag_acc=40/room_speed;
		}

		hsp = 0
		image_speed = 0.35

		with (obj_baddie)
		{
			if point_in_camera(x, y, view_camera[0])
			{
				stun = true
				alarm[0] = 200
				ministun = false
				vsp = -5
				hsp = 0
			}
		}
	    flash = false

	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create(x+10,y+10,obj_bumpeffect)
	}

	//Effect
	if !(instance_exists(dashcloudid)) && grounded
	with instance_create(x,y,obj_dashcloud)
	{
		image_xscale = other.xscale
		other.dashcloudid = id
	}

	image_speed = 0.5
}