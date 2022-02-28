function scr_player_cheesepepstick()
{
	alarm[5] = 2
	alarm[7] = 60
	hurted = true
	
	if place_meeting(x,y-1,obj_railh)
	{
		hsp = 3
		vsp = 0
		sprite_index = spr_cheesepep_stickceilling
	}
	else if place_meeting(x+1,y,obj_railv) or place_meeting(x-1,y,obj_railv)
	{
		if place_meeting(x+1,y,obj_railv)
			xscale = -1
		else
			xscale = 1

		sprite_index = spr_cheesepep_stickwall
		vsp = -3
	}
	else
	{
		grav = basegrav
		image_index = 0
		sprite_index = spr_cheesepep_jump
		state = states.cheesepep
	}


	if key_jump && (place_meeting(x+1,y,obj_railv) or place_meeting(x-1,y,obj_railv))
	{
		scr_soundeffect(sfx_jump)
		grav = basegrav
		vsp = -9
		image_index = 0
		sprite_index = spr_cheesepep_jump
		state = states.cheesepep
	}

	if key_jump && place_meeting(x,y-1,obj_railh) 
	{
		scr_soundeffect(sfx_jump)
		grav = basegrav
		vsp = 1
		image_index = 0
		sprite_index = spr_cheesepep_jump
		state = states.cheesepep
	}

	image_speed = 0.35
}
