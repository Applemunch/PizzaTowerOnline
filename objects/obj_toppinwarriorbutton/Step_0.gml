if place_meeting(x,y-1,obj_player) && sprite_index = spr_toppinwarriorbutton
{
	
	alarm[0] = 30
	
sprite_index = spr_toppinwarriorbutton_pressed	
}

if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;