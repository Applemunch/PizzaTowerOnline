function scr_player_knightpepslopes()
{
	alarm[5] = 2
	alarm[7] = 60
	hurted = true
	hsp = xscale * movespeed

	if sprite_index == spr_knightpepdownslope
	{
		if character == "G"
		{
			if movespeed < 15
				movespeed += 0.4;
		}
		else
			movespeed = 15
	}
	else if character == "G"
	{
		if key_jump && grounded
		{
			move = key_left + key_right;
			
			dir = xscale
			movespeed = abs(hsp)
			
			scr_soundeffect(sfx_jump)
		    vsp = -11
		    state = states.knightpep
			
			image_index = 0
		    sprite_index = spr_knightpepjump
		}
		else if movespeed < 10
			movespeed -= 0.2;
	}
	
	if !scr_slope()
		sprite_index = spr_knightpepcharge
	else
		sprite_index = spr_knightpepdownslope

	//Bump
	if scr_solid(x+(sign(hsp)),y) && !place_meeting(x+(sign(hsp)),y,obj_destructibles)
	&& !place_meeting(x + sign(hsp), y, obj_slope)
		scr_knightbump();

	if movespeed <= 0 && sprite_index == spr_knightpepcharge
	{
		if character == "G"
		{
			sprite_index = spr_knightpepidle
			state = states.knightpep
		}
		else
			movespeed = 15;
	}
	
	image_speed = 0.4
}
