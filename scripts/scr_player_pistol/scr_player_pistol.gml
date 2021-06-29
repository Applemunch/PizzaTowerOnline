function scr_player_pistol()
{
	move = key_right + key_left
	hsp = xscale * movespeed
	
	if grounded && movespeed > 0
	    movespeed -= 0.25
	if floor(image_index) == image_number - 1
	    state = states.normal
	
	if scr_solid(x + sign(hsp), y) && xscale == move && !place_meeting(x + xscale, y, obj_slope)
	    movespeed = 0
	
	landAnim = false
	image_speed = 0.4
	if !instance_exists(obj_slidecloud) && grounded && movespeed > 4
	    instance_create(x, y, obj_slidecloud)
}