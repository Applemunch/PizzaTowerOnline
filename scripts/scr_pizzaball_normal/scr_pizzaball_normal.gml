function scr_pizzaball_normal()
{
	if thrown
	{
	    hsp = image_xscale * (movespeed + slopespeed);
		
		// destroy blocks
	    with obj_destructibles
	    {
	        if place_meeting(x - other.hsp, y, other.id)
	            instance_destroy()
	        if place_meeting(x, y - other.vsp, other.id)
	            instance_destroy()
	    }
	    with obj_rollblock
	    {
	        if place_meeting(x - other.hsp, y, other.id)
	            instance_destroy()
	        if place_meeting(x, y - other.vsp, other.id)
	            instance_destroy()
	    }
		with obj_enemyblock
		{
			if place_meeting(x - other.hsp, y, other)
				instance_destroy();
		}
		
		// collision
	    if place_meeting(x + hsp, y, obj_solid)
	    {
	        angle = 0;
	        image_xscale *= -1;
	        movespeed /= 2;
	    }
		
		// grounded speed
	    if grounded && !kicked
	    {
	        if movespeed > 2
	        {
	            vsp = -jspd;
	            jspd /= 2;
	            movespeed /= 2;
	        }
	        else
	        {
	            vsp = -jspd;
	            jspd /= 2;
				
	            if movespeed > 0
	                movespeed -= deccel;
	            else if slopespeed <= 0
	            {
	                thrown = false;
	                movespeed = 0;
	            }
				
	            if scr_slope()
	            {
	                var _inst = instance_place(x, y + 1, obj_slope);
	                slopespeed += 0.1;
					
	                if _inst.image_xscale > 0
	                    image_xscale = -1;
	                else
	                    image_xscale = 1;
	            }
	            else
	                slopespeed = Approach(slopespeed, 0, deccel);
	        }
	    }
	    else if grounded or kicked
	    {
	        if movespeed > 0
	            movespeed -= deccel;
	        else
	        {
	            thrown = false;
	            movespeed = 0;
	        }
	    }
		
	    if place_meeting(x, y + 1, obj_current)
	    {
	        var _currentinst = instance_place(x, y + 1, obj_current)
			
	        movespeed = 8;
	        image_xscale = sign(_currentinst.image_xscale);
	        hsp = image_xscale * movespeed;
	        vsp = 0;
	        kicked = true;
	    }
	}
	else
	{
	    kicked = false;
	    hsp = image_xscale * (movespeed + slopespeed);
		
	    if scr_slope()
	    {
	        _inst = instance_place(x, y + 1, obj_slope);
	        slopespeed += 0.1;
			
	        if _inst.image_xscale > 0
	            image_xscale = -1;
	        else
	            image_xscale = 1;
	    }
	    else
	        slopespeed = 0;
		
	    var _deccel = 0.1;
		movespeed = max(movespeed - _deccel, 0);
	}
	if jspd < 0
		jspd = 0;
}

function scr_pizzaball_roll()
{
	if scr_slope()
	{
	    kicked = true;
	    var _inst = instance_place(x, y + 1, obj_slope);
		
		var _slope_spd2 = 6;
	    if _inst.image_xscale > 0
	        movespeed = -_slope_spd2;
	    else
	        movespeed = _slope_spd2;
	}
	else
	{
	    thrown = false;
	    kicked = false;
	    state = states.normal;
	}
}