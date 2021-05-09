if (place_meeting(x+1,y,obj_player1) or place_meeting(x-1,y,obj_player1)) && obj_player1.state = states.cheeseball
instance_destroy()

if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;