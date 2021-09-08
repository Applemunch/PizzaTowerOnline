/// @description autotile
if abs(image_yscale) == 1
{
	var up = place_meeting(x, y - 32, obj_ladder);
	var down = place_meeting(x, y + 32, obj_ladder);
	if up
	{
		if down
			image_index = 0;
		else if (!place_meeting(x, y + 32, obj_solid) or place_meeting(x, y + 32, obj_destructibles))
		&& !place_meeting(x, y + 32, obj_platform)
			image_index = 1;
	}
	else if down
		image_index = 2;
}