if scr_culling()
	exit;

if abs(image_yscale) > 1
{
	for (var i = 0; i < abs(image_yscale); i++)
	{
		var img = 0;
		var yy = y + (32 * i);
		
		if i == 0 && !place_meeting(x, y - 1, obj_solid)
			img = 2;
		if i >= abs(image_yscale) - 1 && !place_meeting(x, y + 1, obj_solid)
			img = 1;
		
	    draw_sprite(sprite_index, img, x, yy);
	}
}
else
	draw_self();
