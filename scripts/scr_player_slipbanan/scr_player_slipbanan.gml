function scr_player_slipbanan()
{
	hsp = xscale * movespeed;
	if place_meeting(x + xscale, y, obj_solid)
	    movespeed = 0;
	
	if sprite_index == spr_slipbanan1
	{
	    if floor(image_index) == image_number - 1
	        image_speed = 0;
	    else
	        image_speed = 0.35;
		
	    if grounded && vsp > -1
	    {
	        sprite_index = spr_slipbanan2;
	        image_index = 0;
	        image_speed = 0.35;
	        movespeed = 0;
	    }
	}
	else if sprite_index == spr_slipbanan2
	{
	    image_speed = 0.35;
	    if floor(image_index) == image_number - 1
	        state = states.normal;
	}
}