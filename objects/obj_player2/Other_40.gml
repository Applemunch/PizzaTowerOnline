/*

if ((distance_to_object(obj_player1) > 1000) or key_taunt2) && obj_player1.spotlight = true && global.coop = true
{
alarm[5] = 2
alarm[7] = 60
hurted = true
	x = obj_player1.x
	y = obj_player1.y
	state = states.normal
	
	
		if global.collectN >= 1000
	{
	global.collectN -= 1000
	global.collect += 1000
			with instance_create(obj_player1.x, obj_player1.y,obj_smallnumber)
	number = "1000"
	}
	else if global.collectN >= 100
		{
	global.collectN -= 100
	global.collect += 100
			with instance_create(obj_player1.x, obj_player1.y,obj_smallnumber)
	number = "100"
	}
	

	
}

*/