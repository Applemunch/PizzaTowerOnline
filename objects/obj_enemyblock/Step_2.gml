if obj_player1.character == "S" or obj_player1.character == "V"
	instance_destroy(id, false);

if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;