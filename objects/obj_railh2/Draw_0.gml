if abs(image_xscale) > 1
{
	for (var i = 0; i < abs(image_xscale); i++)
	{
		var xx = x + ((sign(image_xscale) * 32) * i);
		var spr = spr_railh2;
		
		if i == 0
		&& !collision_point(xx - 32, y, obj_solid, true, false)
			spr = spr_railh2left;
		
		if i == abs(image_xscale) - sign(image_xscale)
		&& !collision_point(xx + 32, y, obj_solid, true, false)
			spr = spr_railh2right;
	
	    draw_sprite(spr, -1, xx, y);
	}
}
else
	draw_self();