function scr_player_climbwall()
{
	switch (character)
	{
		default:
		if character != "N" or noisetype == 1
		{
			if windingAnim < 200 && (character == "P" or character == "SP")
				windingAnim++
			
			move = key_left + key_right;

			suplexmove = false

			vsp = -wallspeed + (place_meeting(x + xscale, y, obj_railv) * -3);
			
			if place_meeting(x + xscale, y, obj_unclimbablewall)//character == "SP"
			{
				if wallspeed > 0
					wallspeed -= 0.35;
				if wallspeed > 16
					wallspeed = 16;
				
				if sprite_index != spr_machclimbwall && wallspeed < 8
					wallspeed = 8;
				
				var mv = wallspeed / 16;
				image_speed = lerp(0.35, 0.75, mv); // limit to 2 decimal places
			}
			else
			{
				if wallspeed < 24 && move == xscale
				{
					if global.gameplay == 0
						wallspeed += 0.05;
					else
						wallspeed += 0.1;
				}
				if wallspeed < 8
					wallspeed = 8;
				
				image_speed = 0.6;
			}
			
			crouchslideAnim = true

			//Animations
			sprite_index = spr_machclimbwall

			//Back to other states
			if (!key_attack && character != "S") or (character == "S" && move == 0)
			{
				state = states.normal
				movespeed = 0
			}

			//Hit head
			if scr_solidwall(x, y - 1) && !place_meeting(x, y - 1, obj_destructibles) or place_meeting(x, y - 1, obj_slope) //&& !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x - sign(hsp), y, obj_slope)
			{
				image_speed = 0.6;
				with obj_camera
				{
					shake_mag = 3;
					shake_mag_acc = 4 / room_speed;
				}
				
				if character == "SP"
					sprite_index = spr_playerSP_hitceiling
				else
					sprite_index = spr_superjumpland
				
				scr_soundeffect(sfx_groundpound)
				image_index = 0
				state = states.Sjumpland
				machhitAnim = false
			}
			
			if !scr_solid(x + xscale, y) && state == states.climbwall
			{
				var yplus = 0;
				while !scr_solid(x + xscale, y + yplus)
				{
					yplus++;
					if yplus > 32
					{
						yplus = -1;
						break;
					}
				}
				y += yplus - 1;
				
				with instance_create(x, y, obj_jumpdust)
					image_xscale = other.xscale
				
				if movespeed >= 12
				{
					sprite_index = spr_mach4
					state = states.mach3
				}
				else
				{
					movespeed = max(movespeed, 8);
					sprite_index = spr_mach
					state = states.mach2
				}
				vsp = -grav
				hsp = movespeed * xscale
			}
			
			//Jump
			if key_jump && wallspeed > 0
			{
				if global.gameplay == 0
					movespeed = 8;
				else
					movespeed = 10;
				state = states.mach2
				image_index = 0
			
				if !key_down or character != "SP"
					sprite_index = spr_walljumpstart

				vsp = -11

				xscale *= -1
				jumpstop = false
			}
			
			if wallspeed <= 0
			{
				state = states.jump
				sprite_index = spr_fall
			}
			
			if !instance_exists(obj_cloudeffect)
				instance_create(x, y + 43, obj_cloudeffect)
		}
		else
		{
			hsp = 0
			if sprite_index = spr_playerN_wallclingstart && floor(image_index) >= image_number - 1
				sprite_index = spr_playerN_wallcling

			if sprite_index = spr_playerN_wallcling
				vsp = 2
			else
				vsp = 0

			wallclingcooldown = 0

			if floor(image_index) >= image_number - 1 or !key_jump2
			{
				vsp = -15
				state = states.jump
				sprite_index = spr_playerN_jump
				image_index = 0
			}

			if key_jump
			{
				vsp = -15
				state = states.jump
				sprite_index = spr_playerN_jump
				image_index = 0
			}
			image_speed = 0.35;
		}
		break
	}
}