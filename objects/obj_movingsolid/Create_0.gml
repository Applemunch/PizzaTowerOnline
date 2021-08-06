hsp = 0;
vsp = 0;

function scr_movingsolid(obj, scr)
{
	with obj
	{
		if place_meeting(x - other.hsp, y - other.vsp, other) // touching
		or place_meeting(x, y + other.vsp + 1, other) // on top of
		{
			// horizontal
			var xcheck = scr(x + other.hsp, y);
			if !xcheck or xcheck.id == other.id
				x += other.hsp;
			
			// vertical
			var ycheck = scr(x, y + other.vsp);
			if !ycheck or ycheck.id == other.id
			{
				y += other.vsp;
				
				// bullshit
				if other.vsp > 0
				{
					vsp = other.vsp;
					grounded = true;
				}
			}
		}
	}
}