if global.gameplay == 0
{
	if obj_player.state == states.freefallland && grounded
	{
	    if point_in_camera(x, y, view_camera[0])
	    {
	        drop = true
	        vsp = -5
			grounded = false
	    }
	}

	if !drop
		scr_collide()
	else
	{
		if (vsp < 12) vsp += grav;

		x += hsp;
		y += floor(vsp);
	}


	if scr_solid(x,y+1) && !drop
		hsp = 0

	if banana >= 4
		instance_destroy()
}
else
{
	scr_collide();
	if scr_solid(x, y + 1)
	    hsp = 0;
	if banana >= 2 or !instance_exists(baddieID)
	    instance_destroy();
}