if place_meeting(x,y-1,obj_player1) && !place_meeting(x, y, obj_player1)
with obj_player1
{
	if state != states.gameover
	{
		if state = states.knightpep
			state = states.knightpepslopes
		else if state != states.knightpepslopes
		{
			sprite_index = spr_slipnslide
			state = states.slipnslide
		}
		if movespeed < 12
			movespeed = 12
	}
}

/*
if place_meeting(x,y-1,obj_player2)
with obj_player2
{
	if state = states.knightpep 
	state = states.knightpepslopes
	else if state != states.knightpepslopes
state = states.slipnslide

if movespeed < 12
movespeed = 12
}

