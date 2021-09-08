if abs(image_xscale) == 1
{
	var left = place_meeting(x - 32, y, obj_solid);
	var right = place_meeting(x + 32, y, obj_solid);
	if left
	{
		if right
			sprite_index = spr_railh2;
		else
			sprite_index = spr_railh2right;
	}
	else if right
		sprite_index = spr_railh2left;
}