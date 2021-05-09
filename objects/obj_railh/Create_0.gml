image_speed = 0.35;

if abs(image_xscale) == 1
{
	var left = place_meeting(x - 32, y, obj_solid);
	var right = place_meeting(x + 32, y, obj_solid);
	if left
	{
		if right
			sprite_index = spr_railh;
		else
			sprite_index = spr_railhright;
	}
	else if right
		sprite_index = spr_railhleft;
}