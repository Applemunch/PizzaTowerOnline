function ledge_bump()
{
	// Clip up before bump
	if global.gameplay != 0
	{
		if scr_solidwall(x + xscale, y) && !scr_solidwall(x + xscale, y - 32)
		{
			vsp = 0;
			
			var yy = 0;
			while scr_solid(x + xscale, y + yy)
				yy--;
			
			y += yy;
			
			if scr_stylecheck(2) with obj_camera
				pancur[1] -= yy;
		}
	}
}
