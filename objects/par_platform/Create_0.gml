/// @description 
image_speed = 0;
image_index = 0;

if room == rm_editor
{
	with par_platform
	{
		w_left = place_meeting(x - sprite_width, y, par_platform) or scr_solidwall(x - sprite_width, y);
		w_right = place_meeting(x + sprite_width, y, par_platform) or scr_solidwall(x + sprite_width, y);
		
		if w_left && !w_right {
			image_index = 2
		}
		if w_right && !w_left {
			image_index = 0
		}
		if w_right && w_left {
			image_index = 1;
		}
	}
}