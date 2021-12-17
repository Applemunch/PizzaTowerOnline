function scr_pushout(threshold)
{
	var thresh = threshold;
	if threshold == -1
		thresh = room_width;
	
	var xo = 0;
	while scr_solid(x + xo, y)
	{
		xo += 1;
		if xo > thresh
		{
			xo = 0;
			break;
		}
	}
	
	var xo2 = 0;
	while scr_solid(x + xo2, y)
	{
		xo2 -= 1;
		if xo2 < -thresh
		{
			xo2 = 0;
			break;
		}
	}
	var xo3 = 0;
	if abs(xo) > abs(xo2)
		xo3 = xo2;
	else
		xo3 = xo;
	
	if threshold == -1
		thresh = room_height;
	
	var yo = 0;
	while scr_solid(x, y + yo)
	{
		yo += 1;
		if yo > thresh
		{
			yo = 0;
			break;
		}
	}
	
	var yo2 = 0;
	while scr_solid(x, y + yo2)
	{
		yo2 -= 1;
		if yo2 < -thresh
		{
			yo2 = 0;
			break;
		}
	}
	var yo3 = 0;
	if abs(yo) > abs(yo2)
		yo3 = yo2;
	else
		yo3 = yo;
	
	if !(xo3 == 0 && yo3 == 0)
	{
		if abs(xo3) > abs(yo3)
			y += yo3;
		else
			x += xo3;
		return true;
	}
	return false;
}