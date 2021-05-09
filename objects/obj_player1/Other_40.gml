if ((distance_to_object(obj_player2) > 1000) or key_taunt2) && obj_player1.spotlight = false
{
alarm[5] = 2
alarm[7] = 60
hurted = true
	x = obj_player2.x
	y = obj_player2.y
	state = states.normal
		if global.collect >= 1000
	{
	global.collect -= 1000
	global.collectN += 1000
		with instance_create(obj_player2.x, obj_player2.y,obj_smallnumber)
	number = "1000"
	}
	else if global.collect >= 100
		{
	global.collect -= 100
	global.collectN += 100
		with instance_create(obj_player2.x, obj_player2.y,obj_smallnumber)
	number = "100"
	}

}