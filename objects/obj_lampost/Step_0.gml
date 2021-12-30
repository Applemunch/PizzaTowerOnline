if global.panic
{
	if scr_stylecheck(2)
	{
		randomer += 1;
		if randomer % 4 == 0
			image_index = irandom_range(0, 1);
	
		if randomer >= 11
			randomer -= 11;
	}
	else
		image_speed = 1;
}
else
{
	image_speed = 0;
	image_index = 1;
}
