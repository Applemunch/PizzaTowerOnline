function scr_player_cheeseball()
{
	image_speed = 0.35;
	hsp = xscale * 12
	
	if scr_solid(x + sign(hsp), y)
	&& !place_meeting(x + sign(hsp), y, obj_slope)
	&& !place_meeting(x + sign(hsp), y, obj_destructibles)
	{
	    scr_soundeffect(sfx_loseknight)
	    grav = basegrav
		repeat(8)
			instance_create(x,y,obj_slimedebris)
		
	    hsp = 5 * (-xscale)
	    vsp = -3
	    visible = true
	    image_index = 0
	    image_index = 0
	    flash = true
	    state = states.bump
	}
	sprite_index = spr_cheeseballed
	
	//Input buffer jumping
	if key_jump
		input_buffer_jump = 0

	//Jump
	if (input_buffer_jump < 8) && grounded 
	{
		instance_create(x,y,obj_highjumpcloud2)
		scr_soundeffect(sfx_jump)
		vsp = -5
	}
}