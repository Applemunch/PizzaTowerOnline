/// @description Perform collisions, but also do extra checks for grinding and ladder-climbing
function scr_collide_player()
{
	grounded = false
	grinding = false

	// Vertical
	repeat abs(vsp)
	{
	    if !scr_solid_player(x, y + sign(vsp))
	        y += sign(vsp); 
	    else
		{
			if vsp >= 0
				grounded |= true;
	        vsp = 0;
	        break;
	    }
	}

	// Horizontal
	repeat abs(hsp)
	{
	    // Move up slope
	    if scr_solid_player(x + sign(hsp), y) && !scr_solid_player(x + sign(hsp), y - 1)
			y--;
    
	    // Move down slope
	    if !scr_solid_player(x + sign(hsp), y) && !scr_solid_player(x + sign(hsp), y + 1) && scr_solid_player(x + sign(hsp), y + 2)
	        y++;
		
		// Cheese platforms
		with instance_place(x, y + 1, obj_destructibleplatform)
		{
			falling = true;
			image_speed = 0.35;
		}
		
	    if !scr_solid_player(x + sign(hsp), y)
	        x += sign(hsp); 
	    else
		{
	        hsp = 0;
	        break;
	    }
	}

	//Gravity
	vsp = min(vsp + (grav * gravmult), 20 * gravmult);

	// Check if a wall is below me	
	grounded |= scr_solid_player(x, y + 1)
	// Check if I'm on a platform
	grounded |= !place_meeting(x, y, obj_platform) && place_meeting(x, y + 1, obj_platform)
	// Check if I'm on a grindrail
	grinding = !place_meeting(x, y, obj_grindrail) && place_meeting(x, y + 1, obj_grindrail)
	grounded |= grinding
}