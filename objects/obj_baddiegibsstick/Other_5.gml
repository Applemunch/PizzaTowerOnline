if saveable
{
	with obj_baddiegibsstick
	{
		if id != other.id && x == other.x && y == other.y
			saveable = false;
	}
	
	var col = collision_line(x, y, x, y + room_height, obj_solid, false, true);
	var colSlope = collision_line(x, y, x, y + room_height, obj_slope, false, true);
	var colPlatform = collision_line(x, y, x, y + room_height, obj_platform, false, true);

	hsp = 0;
	if col or colSlope or colPlatform
	{
	    while !grounded
	    {
	        vsp = 1;
	        scr_collide();
	    }
	}

	vsp = 0;
	ds_list_add(global.baddietomb, [room, x, y, sprite_index]);
}