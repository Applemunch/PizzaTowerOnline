if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;

if room == rm_editor exit;
if (vsp < 12) vsp += grav;

if inv_frame = true
image_alpha = 0.5

if inv_frame = false
image_alpha = 1

scr_collide();

