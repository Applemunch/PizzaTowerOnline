function scr_collide_destructibles()
{
	with obj_player1
	{
		if (state == states.jump && sprite_index == spr_playerN_noisebombspinjump)
		or (state == states.pogo && pogochargeactive)
		or (state == states.knightpep && global.gameplay != 0)
		{
			with instance_place(x + xscale , y, obj_destructibles) 
				instance_destroy();
			
			with instance_place(x + hsp + xscale, y, obj_destructibles)
				instance_destroy();
			
			with instance_place(x, y + vsp + 1, obj_destructibles) 
				instance_destroy();
			
			with instance_place(x, y + vsp - 1, obj_destructibles)
				instance_destroy();
			
			with instance_place(x, y + 1, obj_destructibles) 
				instance_destroy();
			
			with instance_place(x, y - 1, obj_destructibles) 
				instance_destroy();
		}
		
		// Destroy Destructibles
		if (character != "V" or state == states.tumble)
		&& place_meeting(x + hsp, y, obj_destructibles)
		{
			if state == states.handstandjump or state == states.mach2 or state == states.mach3
			or state == states.faceplant or state == states.rideweenie or state == states.tacklecharge
			or state == states.machroll or state == states.knightpepslopes or state == states.tumble
			or state == states.hookshot or state == states.crouchslide or state == states.cheeseball
			or (state == states.barrel && sprite_index == spr_barrelroll)
			or (state == states.punch && sprite_index != spr_breakdanceuppercut)
			or (state == states.firemouth && global.gameplay != 0)
			or (state == states.grab && sprite_index == spr_swingding)
			or (state == states.cotton && (sprite_index == spr_cotton_attack or sprite_index == spr_cotton_run or sprite_index == spr_cotton_maxrun))
			{
				with instance_place(x + hsp, y, obj_destructibles)
				{
					if !inst_relation(self, obj_bigdestructibles) or other.state != states.handstandjump
					{
						
					}
					else
					{
						// grab on big blocks
						with other
						{
							suplexmove = false;
							if !shotgunAnim or global.gameplay != 0
								scr_pummel();
							else
							{
								state = states.shotgun;
								image_index = 0;
								sprite_index = spr_shotgunshoot;
								
								if character != "N"
								{
									instance_create(x + image_xscale * 20, y + 20, obj_shotgunbullet);
									with instance_create(x + image_xscale * 20, y + 20, obj_shotgunbullet)
										spdh = 4;
									with instance_create(x + image_xscale * 20, y + 20, obj_shotgunbullet)
										spdh = -4;
								}
							}
						}
					}
					if scr_stylecheck(2)
						hsp2 = other.hsp / 3;
					instance_destroy();
				}
				
				if state == states.mach2
					machpunchAnim = true;
			}
		}
		
		// Destroy thrown
		if state == states.hurt && thrown = true
			if place_meeting(x - hsp, y, obj_destructibles)
				with instance_place(x - hsp, y, obj_destructibles)
					instance_destroy();

		// Destroy from over
		if (state == states.knightpep or state == states.superslam or state == states.hookshot or (state == states.cotton && sprite_index == spr_cotton_drill)) && vsp > 0
		{
			if place_meeting(x, y + 1, obj_destructibles)
			{
				with instance_place(x, y + 1, obj_destructibles)
					instance_destroy();
			}
		}
		
		// Destroy from under
		if vsp <= 0.5 && (state == states.jump or state == states.pogo or state == states.climbwall or state == states.fireass or state == states.Sjump or state == states.mach2 or state == states.mach3 or state == states.punch)
		{
			var block = instance_place(x, y - 2, obj_destructibles);
			if block
			{
				with block
					instance_destroy();
				
				if state != states.Sjump && state != states.climbwall
					vsp = 0
				if state == states.Sjump
					vsp = -11
			}
		}

		// Freefall destroy
		if vsp >= 0 && (state == states.freefall or state == states.freefallland)
		{
			var block = instance_place(x, y + vsp + 2, obj_destructibles);
			if block && !place_meeting(x, y + vsp + 2, obj_platform)
			{
				with block
				{
					with obj_player1
					{
						if place_meeting(x,y + vsp + 2, obj_bigdestructibles)
						&& (freefallsmash <= 10 or global.gameplay == 0)
						{
							if shotgunAnim = false
								sprite_index = spr_bodyslamland
							else
								sprite_index = spr_shotgunjump2
							state = states.freefallland
							image_index = 0
						}
					}
				
					instance_destroy();
				}
			}
		}

		// Superslam destroy metal
		if state == states.freefall or state == states.freefallland
		{
			if place_meeting(x, y + 1, obj_metalblock) && freefallsmash > 10 && room != etb_7
			{
				with instance_place(x, y + 1, obj_metalblock)
					instance_destroy();
			}
		}
		
		// Superjump destroy metal
		if state == states.Sjump && springsjump
		{
			if place_meeting(x, y - 1, obj_metalblock)
			{
				with instance_place(x, y - 1, obj_metalblock)
					instance_destroy();
			}
		}
		
		// Cheese platforms
		if floor(hsp) == 0
		{
			with instance_place(x, y + 1, obj_destructibleplatform)
			{
				falling = true;
				image_speed = 0.35;
			}
		}
		
		// Destroy tnt block
		var block = instance_place(x + hsp, y, obj_tntblock);
		if block && ((state == states.firemouth && global.gameplay != 0) or state == states.handstandjump)
			instance_destroy(block);
		
		// Roll blocks
		if (state == states.tumble or ((state == states.mach2 or state == states.mach3) && sprite_index == spr_snick_tumble))
		&& place_meeting(x + hsp, y, obj_rollblock)
		{
			with instance_place(x + hsp, y, obj_rollblock)
				instance_destroy();
		}
	}
}
