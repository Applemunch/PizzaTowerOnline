function scr_enemy_turn() {





	//Animation
	sprite_index = turnspr
	image_speed = 0.35


	if floor(image_index) = image_number -1
	{
		if object_index != obj_tankOLD
		{
			state = states.idle
			image_index = 0
			sprite_index = idlespr
		}
		else
		{
			state = states.walk
			image_index = 0
			sprite_index = walkspr
		}
	}


}
