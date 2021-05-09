with (obj_baddie)
{
	if (place_meeting(x+hsp,y,obj_enemyblock)) && thrown = true
	{
		instance_destroy(instance_place(x + hsp, y, obj_enemyblock));
	
	}
		if (place_meeting(x,y+vsp,obj_enemyblock)) && thrown = true
	{
		instance_destroy(instance_place(x , y + vsp, obj_enemyblock));
	
	}
}

with (obj_junk)
{
	if (place_meeting(x+hsp,y,obj_enemyblock)) && thrown = true
	{
		instance_destroy(instance_place(x + hsp, y, obj_enemyblock));
	
	}
		if (place_meeting(x,y+vsp,obj_enemyblock))  && thrown = true
	{
		instance_destroy(instance_place(x , y+vsp, obj_enemyblock));
	
	}
}

if obj_player1.character == "S"
	instance_destroy();