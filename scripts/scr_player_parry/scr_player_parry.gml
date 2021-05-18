function scr_player_parry()
{
	landAnim = false;
	if image_index >= image_number - 1
		state = states.normal;

	if grounded
	    movespeed -= 0.5;
	if movespeed <= 0
	    movespeed = 0;
	hsp = movespeed * -xscale;
	
	if grounded && !scr_solid_player(x + hsp, y + 1)
		hsp = 0;

	var _grabbedby = 1;
	if parry_count > 0
	{
	    parry_count--;
	    var parry_threshold = 64;
	
	    with obj_baddie
	    {
	        if distance_to_object(other.id) < parry_threshold && state != states.grabbed && parryable && !(state == states.stun && thrown == true)
	        {
				if hp > 1
					hp = 1;
	            grabbedby = _grabbedby;
	            state = states.grabbed;
	        }
	    }
	}
}