with other{
	
	if character == "V"
		scr_hurtplayer(id);
	else
	{
		var b = 1

		for (i = 0; i <  array_length_1d(transformation)-1; i+=1)
			if state = transformation[i]
				b = 0

		if b = 1
		{
			state = states.fireass
			image_index = 0
			vsp = -25
			sprite_index = spr_fireass
			scr_soundeffect(obj_player1.snd_fireass)
		}
	}
}