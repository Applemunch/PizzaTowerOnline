function scr_player_ladder()
{
	jumpAnim = true
	dashAnim = true
	landAnim = false
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = false
	machhitAnim = false
	turning = false
	jumpstop = false
	movespeed = 0
	hsp = 0
	
	if key_up && !(place_meeting(x, y, obj_hookup) && !place_meeting(x, y - 2, obj_hookup))
	{
		sprite_index = spr_laddermove
		vsp = -2
		if global.gameplay != 0
			vsp = -4
		image_speed = 0.35
	}
	else if key_down
	{
		sprite_index = spr_ladderdown
		vsp = 6
		image_speed = 0.35
	}
	else
	{
		sprite_index = spr_Ladder
		vsp = 0
	}
	
	if x != doorx && doorx != 0
		x = Approach(x, doorx, 3);
	else
		doorx = 0;
	
	mach2 = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = true
	machhitAnim = false
	
	//Fall off
	if !place_meeting((doorx == 0 ? x : doorx), y, obj_ladder) && ladderbuffer <= 0
	{
		hooked = false;
		landAnim = false
		jumpAnim = false
		state = states.normal
		image_index = 0
		
		if vsp < 0 && place_meeting(x, y + abs(vsp), obj_ladder)
		{
			var ytry = y;
			while !scr_solid(x, ytry + 1)
			{
				if ++ytry > room_height
				{
					ytry = y;
					break;
				}
			}
			y = ytry;
			
			grounded = true;
		}
		vsp = 0
	}
	
	if key_jump or (input_buffer_jump < 8 && key_jump2)
	{
		input_buffer_jump = 8;
		
		hooked = false;
		sprite_index = spr_jump
		ladderbuffer = 20
		jumpAnim = true
		state = states.jump
		vsp = -9
		image_index = 0
	}
	if key_down && grounded && !place_meeting(x,y,obj_platform) 
	{
		hooked = false;
		state = states.normal
		image_index = 0
	}
}
