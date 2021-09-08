function scr_pizzaball_golf()
{
	jspd = 8;
	kicked = false;
	
	// visual
	image_xscale = player.xscale;
	sprite_index = spr_pizzaball_stun;
	x = player.x + (23 * player.xscale);
	y = player.y;
	
	// direction
	if !meter
	{
		var angle_spd = 2;
		if !player.key_attack
		{
			if image_xscale > 0
		    {
		        if player.key_down
		            m_angle -= angle_spd;
		        else if player.key_up
					m_angle += angle_spd;
				m_angle = clamp(m_angle, -26, 90);
		    }
		    else if image_xscale < 0
		    {
				if player.key_down
		            m_angle += angle_spd;
		        else if player.key_up
					m_angle -= angle_spd;
				m_angle = clamp(m_angle, 90, 206);
		    }
			
			// next
		    if player.key_slap2
		    {
		        meter = true;
		        turn = false;
		        m_meter = 0;
				
				scr_soundeffect(sfx_step);
				player.sprite_index = player.spr_golflook3;
				player.image_index = 0;
		    }
			
			// turn around
		    if -player.key_left && image_xscale > 0
		    {
				player.xscale = -1;
				image_xscale = -1;
		        m_angle = 180;
		    }
			else if player.key_right && image_xscale < 0
			{
				player.xscale = 1;
				image_xscale = 1;
	            m_angle = 0;
			}
		}
	}
	else
	{
		// strength
		var _mtspd = 0.025;
	    if player.sprite_index != player.spr_golfswing
	    {
	        if turn
	        {
	            m_meter -= _mtspd;
	            if m_meter < 0
	            {
	                turn = false;
	                m_meter = 0;
	            }
	        }
	        else
	        {
	            m_meter += _mtspd;
	            if m_meter > 1
	            {
	                turn = true;
	                m_meter = 1;
	            }
	        }
	    }
		
	    if player.key_slap2 && !player.key_attack && player.sprite_index != player.spr_golfswing
	    {
			with player
			{
				scr_soundeffect(sfx_step);
				
		        state = states.tackle;
		        hsp = 0;
		        movespeed = 0;
		        image_index = 0;
		        sprite_index = spr_golfswing;
			}
	    }
		
		// throw golf ball
	    if player.sprite_index == player.spr_golfswing && floor(player.image_index) == 9
	    {
			scr_soundeffect(sfx_punch);
			
	        x = player.x;
	        y = player.y - 40;
			
	        global.golfhit++;
			
	        if !scr_solid(x + (2 * image_xscale), y)
	            x += 2 * image_xscale;
			
	        m_meter += 0.25;
	        state = states.normal;
	        thrown = true;
	        sprite_index = spr_pizzaball_idle;
	        meter = false;
	        movespeed = abs(lengthdir_x((m_spd * m_meter), m_angle));
			
	        image_xscale = player.xscale;
	        hsp = image_xscale * movespeed;
	        vsp = lengthdir_y((m_spd * m_meter), m_angle);
			
			/*
	        var _my_id = id;
			with player
			{
		        follow_golf = true;
		        targetgolf = _my_id;
			}
			*/
	    }
	}
}