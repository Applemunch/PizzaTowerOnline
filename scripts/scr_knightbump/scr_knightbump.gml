/// @param [check]
/// @param [state]
function scr_knightbump()
{
	var _check = (argument_count > 0 ? argument[0] : false);
	var _state = (argument_count > 1 ? argument[1] : true);
	
	if _check
	{
		if (state != states.knightpep && state != states.knightpepattack && state != states.knightpepslopes)
		or sprite_index == spr_knightpepstart
			return false;
	}
	
	// knight armor debris
	if character == "P" or character == "N" or character == "SP"
	{
		for(var i = 0; i < 5 - (character == "N"); i++)
		{
			with instance_create(x, y, obj_knightdebris)
			{
				image_index = i;
				if other.character == "P"
					sprite_index = spr_knightdebris;
				else if other.character == "N"
					sprite_index = spr_playerN_knightarmor;
				else if other.character == "SP"
					sprite_index = spr_knightdebrisSP;
			}
		}
	}
	else repeat 6
		instance_create(x, y, obj_metaldebris);
	
	scr_soundeffect(sfx_loseknight)
	
	// bump
	if _state
	{
		scr_soundeffect(sfx_bumpwall)
		hsp = 5 * -xscale
		vsp = -3
		image_index = 0
		flash = true
		state = states.bump
	
		alarm[5] = 2
		alarm[7] = 60
		hurted = true
	}
	return true;
}