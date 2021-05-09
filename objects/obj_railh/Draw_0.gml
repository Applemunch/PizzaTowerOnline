if abs(image_xscale) > 1
{
	for (var i = 0; i < abs(image_xscale); i++)
	{
		var xx = x + ((sign(image_xscale) * 32) * i);
		var spr = spr_railh;
		
		if i == 0
		&& !collision_point(xx - 32, y, obj_solid, true, false)
			spr = spr_railhleft;
		
		if i == abs(image_xscale) - sign(image_xscale)
		&& !collision_point(xx + 32, y, obj_solid, true, false)
			spr = spr_railhright;
	
	    draw_sprite(spr, -1, xx, y);
	}
}
else
	draw_self();