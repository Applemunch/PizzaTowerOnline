if !instance_exists(baddieID)
{
	instance_destroy();
	exit;
}

if instance_exists(baddieID)
{
	x = baddieID.x;
	y = baddieID.y;
	image_xscale = baddieID.image_xscale;
}

if instance_exists(baddieID) && place_meeting(x,y,obj_player1) && !obj_player1.cutscene
&& (obj_player1.state != states.firemouth or global.gameplay != 0) && obj_player1.state != states.gameover
&& obj_player1.state != states.hitlag
{
	if baddieID.state != states.grabbed && baddieID.state != states.hit
	{
		with (obj_player1)
		{
			//Insta kill
			if instance_exists(other.baddieID) && instakillmove && other.baddieID.state != states.grabbed && (!other.baddieID.thrown or global.gameplay != 0) && !other.baddieID.invincible && other.baddieID.instantkillable
			&& (other.baddieID.stuntouchbuffer <= 0 or other.baddieID.state != states.stun or global.gameplay == 0)
			{
				var bad = other.baddieID;
				if state == states.mach3 && sprite_index != spr_mach3hit && (character = "P" or character = "V" or (character == "N" && noisetype == 1))
				{
					if !fightball
						sprite_index = spr_mach3hit
					image_index = 0
				}
				if state == states.mach2 && grounded
				{
					machpunchAnim = true
					image_index = 0
				}
				if bad.object_index != obj_tankOLD
				{
					if state = states.mach3 or (state == states.freefall && freefallsmash > 10)
					or state == states.knightpep or state == states.knightpepslopes
					or state == states.superslam or state == states.tumble
						bad.hp -= 99;
				}
				
				if state != states.hurt
					bad.grabbedby = 1
				
				global.hit += 1
				if !grounded && state != states.freefall && key_jump2
				{
					if state = states.mach2 or (state = states.mach3 && !fightball)
						sprite_index = spr_mach2jump
					suplexmove = false
					vsp = -11
				}
				
				if global.gameplay == 0
					instance_destroy(bad);
				else
				{
					bad.image_xscale = -xscale;
					if state != states.machroll
					{
						bad.hithsp = -8 * bad.image_xscale;
						bad.hitvsp = -8;
					}
					else
						bad.hitvsp = 8;
					
					if state == states.mach3
						bad.hithsp = hsp;
					
					scr_hitthrow(bad, id);
				}
				
				scr_soundeffect(sfx_punch);
				scr_failmod(mods.pacifist);
				exit;
			}
			
			//Stomp
			if instance_exists(other.baddieID) && y < other.baddieID.y && attacking = false && sprite_index != spr_player_mach2jump && sprite_index != spr_swingding && ((state = states.boots && vsp > 0) or state = states.jump  or state = states.mach1 or state = states.grab) && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep && (sprite_index != spr_swingding or global.gameplay == 0) && !other.baddieID.invincible && other.baddieID.stompable
			{
				scr_soundeffect(sfx_stompenemy)
				
			    if x != other.baddieID.x
					other.baddieID.image_xscale = -sign(other.baddieID.x - x)
				
				image_index = 0
				other.baddieID.state = states.stun
				if other.baddieID.stunned < 100
					other.baddieID.stunned = 100
				
				instance_create(x,y+ 50, obj_stompeffect)
				
				stompAnim = true
				other.baddieID.image_index = 0
				
				if key_jump2 
					vsp = -14
				else
					vsp = -9
				
				if state == states.jump
					sprite_index = spr_stompprep
			}
			
			//Pogo
			if place_meeting(x,y+1, other) && state == states.pogo && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_playerN_pogobounce && !other.baddieID.invincible
			{
				if !pogochargeactive or other.baddieID.object_index == obj_pizzaballOLD
				{
					pogospeedprev = false
					other.baddieID.vsp = -3
					scr_soundeffect(sfx_stompenemy)
					other.baddieID.state = states.stun
					if other.baddieID.stunned < 100
						other.baddieID.stunned = 100
					sprite_index = spr_playerN_pogobounce
				}
				else if !other.baddieID.thrown
				{
					pogospeedprev = false
					scr_throwenemy()
					if global.gameplay != 0
						increase_combo();
					sprite_index = spr_playerN_pogobouncemach
				}
				
				instance_create(x,y+ 50, obj_stompeffect)
				image_index = 0
				movespeed = 0
				vsp = 0
			}
			
			//Stun from touching
			if instance_exists(other.baddieID) && other.baddieID.thrown= false && other.baddieID.stuntouchbuffer == 0 && other.baddieID.state != states.pizzagoblinthrow  && other.baddieID.vsp > 0 && state != states.punch && state != states.tackle && state != states.superslam && state != states.pogo && state != states.machslide  && state != states.freefall && (state != states.mach2 or other.baddieID.object_index == obj_pizzaballOLD) && state != states.handstandjump && state != states.hurt && other.baddieID.state != states.chase
			&& other.baddieID.bumpable && !other.baddieID.invincible 
			&& ((other.baddieID.object_index != obj_pizzice && other.baddieID.object_index != obj_ninja) or other.baddieID.state != states.charge)
			{
				scr_soundeffect(sfx_bumpwall)
				
				if state != states.bombpep && state != states.mach1 && state != states.crouchslide && state != states.machroll && state != states.mach2 && state != states.mach3 && state != states.revolver && state != states.dynamite && state != states.climbwall && state != states.frozen
					movespeed = 0
				
				other.baddieID.stuntouchbuffer = 50
				
				if other.baddieID.object_index = obj_pizzaballOLD
					global.golfhit += 1
				if other.baddieID.stunned < 100
					other.baddieID.stunned = 100
				
				if x != other.baddieID.x
					other.baddieID.image_xscale = -sign(other.baddieID.x - x)
				other.baddieID.vsp = -5
				other.baddieID.hsp = -other.baddieID.image_xscale * 2
				other.baddieID.state = states.stun
				other.baddieID.image_index = 0
			}
			
			//Attack
			if instance_exists(other.baddieID) && state == states.handstandjump && !other.baddieID.invincible && character != "S"
			{
				if (!other.baddieID.thrown or global.gameplay != 0) // && (character = "P" or character = "N" or character == "SP" or other.baddieID.object_index == obj_pizzaballOLD)
				&& !(character == "G" && key_slap)
				{
					movespeed = 0
					image_index = 0
					sprite_index = spr_haulingstart
					
					state = states.grab
					
					other.baddieID.state = states.grabbed
					other.baddieID.grabbedby = 1
					
					baddiegrabbedID = other.baddieID
				}
				else
				{
					increase_combo();
					
					if other.baddieID.thrown == true && !key_up 
					{
						other.baddieID.hsp = xscale * 25
						other.baddieID.vsp = 0
					}
					else if !key_up
					{
						other.baddieID.hsp = xscale * 6
						other.baddieID.vsp = -6
					}
					else
					{
						other.baddieID.vsp = -14
						other.baddieID.hsp = 0
					}
					
					if other.baddieID.object_index == obj_pizzaballOLD
						global.golfhit += 1;
					scr_soundeffect(sfx_killingblow)
					
					scr_pummel(false);
					movespeed = 0;
					
					scr_throwenemy(other.baddieID);
				}
			}
		}
	}
}