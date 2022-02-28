/// @description Check if player is colliding, extra checks for ladders
function scr_solid_player(argX, argY, slop = true, retcol = false)
{
	/// @param x
	/// @param y
	
	// Store old position
	var old_x = x
	var old_y = y
	var collide = noone;
	
	x = argX;
	y = argY;
	
	// Check if I'm over a tile
	var _solid = instance_place(x, y, obj_solid);
	var _ghostwall = instance_place(x, y, obj_ghostwall);
	
	if _ghostwall && state != states.ghost
		collide = _ghostwall;
	if _solid
		collide = _solid;
	
	// Check if I crossed a tile boundary and landed on a platform
	if place_meeting(x, y, obj_platform) && state != states.ladder
	{
		var instlist = ds_list_create();
		var numplat = instance_place_list(x, y, obj_platform, instlist, true);
		
		if y > old_y && bbox_bottom % 16 == 0
		{
			for(var i = numplat - 1; i >= 0; i--)
			{
				var inst = instlist[| i];
				if !place_meeting(x, old_y, inst) && place_meeting(x, y, inst)
				{
					if inst.object_index != obj_cottonplatform or state == states.cotton
					{
						collide = inst;
						break;
					}
				}
			}
		}
		ds_list_destroy(instlist);
	}
	
	var transwater = instance_place(x, y, obj_transwater);
	if transwater && !place_meeting(x, old_y, transwater)
	{
		if state == states.mach3 or (state == states.machslide && sprite_index == spr_mach3boost)
			collide = transwater;
	}
	
	// Check if I'm on a grindrail
	if y > old_y && bbox_bottom % 16 == 0
	&& !place_meeting(x, old_y, obj_grindrail) && place_meeting(x, y, obj_grindrail)
	{
		if state == states.mach2 or state == states.grind
			collide = true;
	}

	// Check if I'm over a slope
	if slop
	{
		var slope = instance_place(x, y, obj_slope);
		if slope
		{
			with slope
			{
				var object_side = 0
				var slope_start = 0
				var slope_end = 0
	
				if image_xscale > 0
				{
					// Slope is facing /|
					object_side = other.bbox_right
					slope_start = bbox_bottom
					slope_end = bbox_top
				}
				else
				{
					// Slope is facing |\
					object_side = other.bbox_left
					slope_start = bbox_top
					slope_end = bbox_bottom
				}
		
				// Calculate steepness of slope
				var m = sign(image_xscale) * (bbox_bottom - bbox_top) / (bbox_right - bbox_left)
				var slope = slope_start - round(m * (object_side - bbox_left))
				
				if other.bbox_bottom >= slope
				{
					// Object is inside slope
					collide = id;
				}
			}
		}
	}
	
	x = old_x
	y = old_y
	return (retcol ? collide : instance_exists(collide));
}