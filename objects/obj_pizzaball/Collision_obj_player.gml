if other.state == states.handstandjump && state != states.golf
{
    var _player = other.id
    var _pizzaball = id
	
	with _player
	{
	    if scr_transformationcheck()
	    {
	        if state != states.golf
	        {
	            golfid = _pizzaball;
	            image_speed = 0.35;
	            image_index = 0;
	            sprite_index = spr_golflook1;
				key_slap2 = false;
	            other.y = y;
	            hsp = 0;
	            state = states.golf;
	            _pizzaball.state = states.golf;
	            _pizzaball.player = id;
				
	            if xscale > 0
	                _pizzaball.m_angle = 0
	            else
	                _pizzaball.m_angle = 180
	        }
	    }
	}
}