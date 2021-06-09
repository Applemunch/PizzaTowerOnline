if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;

if room == rm_editor exit;
if (vsp < 12) vsp += grav;

image_alpha = (inv_frame ? 0.5 : 1);
scr_collide();