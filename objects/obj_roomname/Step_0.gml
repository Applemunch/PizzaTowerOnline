//Text
/*
if showtext
{
	if obj_tv.bubblespr != noone
		yi = min(yi + 20, 90);
	else
	{
		if yi > 30
			yi = max(yi - 5, 30);
		else
			yi = min(yi + 5, 30);
	}
}
else
	yi = max(yi - (yi > 30 or obj_tv.bubblespr != noone ? 8 : 1), -50);
*/

if showtext && !sprite_exists(obj_tv.bubblespr)
	yi = min(yi + 5, 30);
else
{
	if showtext
	{
		yi -= 5;
		if alarm[0] > -1
			alarm[0]++;
	}
	yi = max(yi - 1, -50);
}
