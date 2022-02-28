if sprite_index != spr_haystackburning && sprite_index != spr_haystackburningup
{
	with obj_peasanto
	{
		if place_meeting(x + hsp, y, other) && state == states.charge
			other.sprite_index = spr_haystackburningup
	}
	with obj_player1
	{
		if (state == states.firemouth && (place_meeting(x + hsp, y, other) or place_meeting(x, y + 1, other)) && other.gameplay != 0)
		or (state == states.fireass && place_meeting(x, y + 1, other))
			other.sprite_index = spr_haystackburningup
	}
}
else if sprite_index == spr_haystackburningup
{
	if floor(image_index) >= image_number - 1
		sprite_index = spr_haystackburning
}
else if sprite_index == spr_haystackburning && gameplay == 1
{
	var haystack = instance_place(x + 1, y, obj_haystack);
	if haystack
	{
		if haystack.sprite_index != spr_haystackburningup && haystack.sprite_index != spr_haystackburning
	        haystack.sprite_index = spr_haystackburningup
	}
}

if gameplay == 0
{
	if place_meeting(x + 1, y, obj_haystack) && sprite_index == spr_haystackburning 
	{
		with instance_place(x + 1, y, obj_haystack)
		{
			if sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning 	
				sprite_index = spr_haystackburningup
		}
	}

	if place_meeting(x - 1, y, obj_haystack) && sprite_index == spr_haystackburning 
	{
		with instance_place(x - 1, y, obj_haystack)
		{
			if sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning 	
				sprite_index = spr_haystackburningup
		}
	}

	if place_meeting(x, y + 1, obj_haystack) && sprite_index == spr_haystackburning 
	{
		with instance_place(x, y + 1, obj_haystack)
		{
			if sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning 	
				sprite_index = spr_haystackburningup
		}
	}

	if place_meeting(x, y - 1, obj_haystack) && sprite_index == spr_haystackburning 
	{
		with instance_place(x, y - 1, obj_haystack)
		{
			if sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning 	
				sprite_index = spr_haystackburningup
		}
	}
}

//Burn player
if sprite_index == spr_haystackburning && obj_player.state != states.fireass && obj_player.state != states.knightpep && place_meeting(x,y-1,obj_player)
{
	with obj_player1
	{
		if character = "V"
			scr_hurtplayer(obj_player1)
		else if scr_transformationcheck()
		{
			if !audio_is_playing(snd_fireass)
				scr_soundeffect(snd_fireass)

			state = states.fireass
			image_index = 0
			vsp = -5
			sprite_index = spr_fireass
		}
	}
}
