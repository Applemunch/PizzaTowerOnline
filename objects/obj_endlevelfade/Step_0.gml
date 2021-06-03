with obj_player1
{
	if room == rank_room
	{
		x = 960 / 2
		y = 540 / 2
		
		state = states.door;
		sprite_index = spr_lookdoor;
		doorx = x;
	}
}

with obj_camera
	visible = false

if fadealpha > 1
{
	fadein = true
	if room != rank_room
		room = rank_room
}

if fadein = false
	fadealpha += 0.1
else if fadein = true
	fadealpha -= 0.1