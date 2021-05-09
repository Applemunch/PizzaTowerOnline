if abs(image_yscale) > 1
{
	for (var i = 0; i < abs(image_yscale); i++)
	{
		var yy = y + ((sign(image_yscale) * 32) * i);
		var spr = spr_railv;
	
		if i == 0
		&& !collision_point(x, yy - 32, obj_solid, true, false)
			spr = spr_railvup;
		
		if i == abs(image_yscale) - sign(image_yscale)
		&& !collision_point(x, yy + 32, obj_solid, true, false)
			spr = spr_railvdown;
		
	    draw_sprite(spr, -1, x, yy);
	}
}
else
	draw_self();