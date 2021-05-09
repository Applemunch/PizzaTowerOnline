function ledge_bump()
{
	// Clip up before bump
	if global.gameplay != 0
	{
		if scr_solid(x + xscale, y) && !scr_solid(x + xscale, y - 32)
		{
			vsp = 0;
			while scr_solid(x + xscale, y)
				y--;
		}
	}
}