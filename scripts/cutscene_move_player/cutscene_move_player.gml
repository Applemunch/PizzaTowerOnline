function cutscene_move_player(player, x_to, max_hsp, threshold)
{
	var finish = false;
	with player
	{
	    sprite_index = spr_move;
		
	    var mv = abs(hsp) / 6;
		image_speed = lerp(0.35, 0.6, floor(mv) + (floor(frac(mv) * 100) / 100)); // limit to 2 decimal places
		
		// speed
	    if x < x_to - threshold
	    {
	        xscale = 1;
	        if hsp < max_hsp
	            hsp += 0.5;
	        else
	            hsp = max_hsp;
	    }
	    else if x > x_to + threshold
	    {
	        xscale = -1;
	        if hsp > -max_hsp
	            hsp -= 0.5;
	        else
	            hsp = -max_hsp;
	    }
	    else
	    {
	        hsp = 0;
	        finish = true;
	    }
	}
	
	if finish
	    cutscene_end_action();
	
	// step cloud
	with player
	{
	    if (floor(image_index) == 3 or floor(image_index) == 8) && !steppy && character != "V"
	    {
	        instance_create(x, y + 43, obj_cloudeffect);
	        steppy = true;
	    }
	    if floor(image_index) != 3 && floor(image_index) != 8
	        steppy = false;
	}
}