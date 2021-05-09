if room == rm_editor exit;
if global.collectsound < 10
global.collectsound += 1

if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;