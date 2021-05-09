if global.panic
{
	randomer += 1;
	if randomer % 4 == 0
		image_index = irandom_range(0, 1);
	
	if randomer >= 11
		randomer -= 11;
}