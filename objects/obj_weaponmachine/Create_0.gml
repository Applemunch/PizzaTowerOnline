image_speed = 0
image_index = 0;
depth = -1

if global.snickrematch && global.snickchallenge
	price = 0;
else
	price = 4;

with obj_player1
	if character == "S" instance_destroy(other.id);