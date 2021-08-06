/// @description Perform collisions, but also do extra checks for grinding and ladder-climbing
function scr_collide_player()
{
	grounded = false
	grinding = false
	
	var _hsp = hsp;
	var _vsp = vsp;
	
	if !variable_instance_exists(id, "hascollision") or hascollision
	{
		// Vertical
		repeat abs(_vsp)
		{
		    if !scr_solid_player(x, y + sign(_vsp))
		        y += sign(_vsp);
		    else
			{
				if vsp >= 0
					grounded |= true;
		        vsp = 0;
		        break;
		    }
		}

		// Horizontal
		repeat abs(_hsp)
		{
		    // Move up slope
		    if scr_solid_player(x + sign(_hsp), y) && !scr_solid_player(x + sign(_hsp), y - 1)
				y--;
    
		    // Move down slope
		    if !scr_solid_player(x + sign(_hsp), y) && !scr_solid_player(x + sign(_hsp), y + 1) && scr_solid_player(x + sign(_hsp), y + 2)
		        y++;
		
			// Cheese platforms
			with instance_place(x, y + 1, obj_destructibleplatform)
			{
				falling = true;
				image_speed = 0.35;
			}
		
			with instance_place(x, y, obj_hallway)
				event_perform(ev_collision, obj_player1);
		
		    if !scr_solid_player(x + sign(_hsp), y)
		        x += sign(_hsp); 
		    else
			{
		        hsp = 0;
		        break;
		    }
		}
		
		// Check if a wall is below me	
		grounded |= scr_solid_player(x, y + 1) > 0
		// Check if I'm on a platform
		grounded |= !place_meeting(x, y, obj_platform) && place_meeting(x, y + 1, obj_platform)
		// Check if I'm on a grindrail
		grinding = !place_meeting(x, y, obj_grindrail) && place_meeting(x, y + 1, obj_grindrail)
		grounded |= grinding
	}
	
	//Gravity
	vsp = min(vsp + (grav * gravmult), 20 * gravmult);
}