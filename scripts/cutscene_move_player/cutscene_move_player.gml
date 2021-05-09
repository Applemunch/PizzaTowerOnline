function cutscene_move_player(argument0, argument1, argument2, argument3) {
	var player = argument0
	var x_to = argument1
	var max_hsp = argument2
	var threshold = argument3
	var finish = false

	with player
	{
	    sprite_index = spr_move
	    image_speed = 0.5
	    if x < x_to - threshold
	    {
	        xscale = 1
	        if hsp < max_hsp
	            hsp += 0.5
	        else
	            hsp = max_hsp
	    }
	    else if x > x_to + threshold
	    {
	        xscale = -1
	        if hsp > -max_hsp
	            hsp -= 0.5
	        else
	            hsp = -max_hsp
	    }
	    else
	    {
	        hsp = 0
	        finish = true
	    }
	}

	if finish
	    cutscene_end_action()

	with player
	{
	    if (floor(image_index) == 3 or floor(image_index) == 8) && steppy == false && character != "V"
	    {
	        instance_create(x, y + 43, obj_cloudeffect)
	        steppy = true
	    }
	    if floor(image_index) != 3 && floor(image_index) != 8
	        steppy = false
	}


}
