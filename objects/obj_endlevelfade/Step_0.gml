with obj_player
{
	if room == rank_room
	{
		x = 960 / 2;
		y = 540 / 2;
		
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

if !fadein
	fadealpha += 0.1
else
	fadealpha -= 0.1
