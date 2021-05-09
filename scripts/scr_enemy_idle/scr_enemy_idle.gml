function scr_enemy_idle() 
{
	if vsp > 1 && (grounded or (grounded && !place_meeting(x,y,obj_platform)))
	{
		instance_create(x,y,obj_landcloud)
		image_index = 0
	}

	if vsp >= 0 && sprite_index = scaredspr && scaredbuffer = 0
	{
		state = states.walk
		sprite_index = walkspr
		
		if object_index == obj_treasureguy
			state = states.chase
		if object_index == obj_pickle && attacking
		{
			attacking = false
			bombreset = 0
		}
	}

	if scaredbuffer > 0
		scaredbuffer --
	
	if (sprite_index == spr_forknight_turn or sprite_index == spr_indiancheese_turn)
	&& floor(image_index) == image_number- 1
	{
		sprite_index = walkspr
		state = states.walk
	}

	if  (grounded or (grounded && !place_meeting(x,y,obj_platform))) && vsp > 0
		hsp =0

	if !( (grounded or (grounded && !place_meeting(x,y,obj_platform)))) && hsp < 0
		hsp += 0.1
	else if !( (grounded or (grounded && !place_meeting(x,y,obj_platform)))) && hsp > 0
		hsp -= 0.1

	//Animation



	image_speed = 0.35


}
