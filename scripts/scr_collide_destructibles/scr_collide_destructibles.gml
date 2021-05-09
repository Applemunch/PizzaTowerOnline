function scr_collide_destructibles()
{
	with obj_player1
	{
		if (state = states.jump && sprite_index = spr_playerN_noisebombspinjump) or (state = states.pogo && pogochargeactive = true)
		{
			with instance_place(x + xscale , y, obj_destructibles) 
				instance_destroy();
			
			with instance_place(x + hsp + (xscale) , y, obj_destructibles) 
				instance_destroy();
			
			with instance_place(x, y+vsp + 1, obj_destructibles) 
				instance_destroy();
			
			with instance_place(x, y+vsp - 1, obj_destructibles)
				instance_destroy();
			
			with instance_place(x, y+1, obj_destructibles) 
				instance_destroy();
			
			with instance_place(x, y-1, obj_destructibles) 
				instance_destroy();
		}

		//Destroy Destructibles
		if state == states.punch or state = states.faceplant or state = states.tacklecharge or sprite_index = spr_barrelroll or state = states.mach2 or state = states.mach3 or state = states.machroll or state = states.knightpepslopes or state = states.tumble or state = states.hookshot or state == states.crouchslide or (state == states.firemouth && global.gameplay != 0) or (state == states.grab && sprite_index == spr_swingding) or state == states.cheeseball
		{
			if place_meeting(x + hsp, y, obj_destructibles)
			{
				if character != "V" or state == states.tumble
				{
					with instance_place(x + hsp, y, obj_destructibles)
						instance_destroy();
					
					if state = states.mach2
						machpunchAnim = true
				}
			}
		}
		
		// Destroy thrown
		if state = states.hurt && thrown = true
			if place_meeting(x - hsp, y, obj_destructibles)
				with instance_place(x - hsp, y, obj_destructibles)
					instance_destroy();

		// Destroy from over
		if (state = states.knightpep or state = states.superslam or state = states.hookshot) && vsp > 0
		{
			if place_meeting(x, y + 1, obj_destructibles)
			{
				with instance_place(x, y + 1, obj_destructibles)
					instance_destroy();
			}
		}

		// Cheese platforms
		if place_meeting(x, y + 1, obj_destructibleplatform)
		{
			with instance_place(x, y + 1, obj_destructibleplatform)
			{
				falling = true;
				if falling = true
					image_speed = 0.35
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
						&& freefallsmash <= 10
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
		if state =states.freefall or state =states.freefallland
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
		
		// Firemouth destroys tnt block
		if global.gameplay != 0
		{
			var block = instance_place(x + hsp, y, obj_tntblock);
			if state == states.firemouth && block
				instance_destroy(block);
		}
		
		//Roll blocks
		if state == states.tumble && place_meeting(x + hsp, y, obj_rollblock)
		{
			with instance_place(x + hsp, y, obj_rollblock)
				instance_destroy();
		}
		
		// Suplex dash destroy big block
		if state == states.handstandjump 
		{
			with obj_destructibles
			{
				if place_meeting(x - other.hsp, y, other)
				{
					with other
					{
						if place_meeting(x + hsp, y, obj_bigdestructibles)
						&& !place_meeting(x + hsp, y, obj_tntblock)
						{
							if shotgunAnim = false
							{
								sprite_index = choose(spr_suplexmash1,spr_suplexmash2,spr_suplexmash3, spr_suplexmash4, spr_punch)
								image_index = 0
								state = states.tackle
								movespeed = 3
								vsp = -3
								instance_destroy(other)
							}
							else
							{
								state = states.shotgun
								image_index = 0
								sprite_index = spr_shotgunshoot
								if character != "N"
								{
									instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
									with instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
										spdh= 4
									with instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
										spdh= -4
								}
								instance_destroy(other)
							}
						}
						else if other.object_index != obj_bigdestructibles
							instance_destroy(other)
					}
				}
			}
		}
	}
}
