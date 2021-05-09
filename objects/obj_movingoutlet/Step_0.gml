if hsp == 0 && vsp == 0
{
	if side = true
		x += spd
	else 
		y += spd
}
else
{
	if scr_solid(x + hsp, y)
	{
		while !scr_solid(x + sign(hsp), y)
			x += sign(hsp);
		hsp *= -1;
	}
	x += hsp
	
	if scr_solid(x, y + vsp)
	{
		while !scr_solid(x, y + sign(vsp))
			y += sign(vsp);
		vsp *= -1;
	}
	y += vsp
}