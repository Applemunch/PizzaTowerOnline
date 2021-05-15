if !instance_exists(baddieID) && room != custom_lvl_room
{
	instance_destroy();
	exit;
}

if instance_exists(baddieID)
{
	x = baddieID.x;
	y = baddieID.y;
	image_xscale  = baddieID.image_xscale;
}

function scr_getfucked(player)
{
	var lag = 5;
	with other.baddieID
	{
		increase_combo();
		
		repeat 5
			create_particle(x, y, particles.baddiegibs)
		repeat 5
			instance_create(x,y,obj_slapstar)
		instance_create(x,y,obj_bangeffect)
		
		hp -= 1;
		thrown = true;
						
		hitLag = lag;
		hitX = x;
		hitY = --y;
		state = states.hit;
						
		image_xscale = other.xscale;
						
		hithsp = 8 * image_xscale;
		hitvsp = -8;
		hsp = hithsp;
		vsp = hitvsp;
						
		grounded = false;
	}
	
	if player && state != states.hitlag
	{
		if scr_solid(x, y)
		{
			x = hitX;
			y = hitY;
		}
		tauntstoredmovespeed = movespeed;
		tauntstoredsprite = sprite_index;
		tauntstoredstate = state;
		tauntstoredvsp = vsp;
		state = states.hitlag;
						
		hitLag = lag;
		hitX = x;
		hitY = y;
	}
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
			if instance_exists(other.baddieID) && instakillmove && other.baddieID.state != states.grabbed && !other.baddieID.thrown && !other.baddieID.invincible && other.baddieID.instantkillable
			{
				if state == states.mach3 && sprite_index != spr_mach3hit && (character = "P" or character = "V" or (character == "N" && noisetype == 1))
				{
					if fightball = false
						sprite_index = spr_mach3hit
					image_index = 0
				}
				if state == states.mach2 && grounded
				{
					machpunchAnim = true
					image_index = 0
				}
				if state = states.mach3 or (state == states.freefall && freefallsmash > 10) or state == states.knightpepslopes
					other.baddieID.hp = -10;
				
				if state != states.hurt
					other.baddieID.grabbedby = 1
				
				global.hit += 1
				if !grounded && state != states.freefall && key_jump2
				{
					if state = states.mach2 or (state = states.mach3 && fightball = false)
						sprite_index = spr_mach2jump
					suplexmove = false
					vsp = -11
				}
				
				if global.gameplay == 0
					instance_destroy(other.baddieID);
				else
					scr_getfucked(true);
				
				scr_soundeffect(sfx_punch);
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
			if instance_exists(other.baddieID) && other.baddieID.thrown= false && other.baddieID.stuntouchbuffer = 0 && other.baddieID.state != states.pizzagoblinthrow  && other.baddieID.vsp > 0 && state != states.punch && state != states.tackle && state != states.superslam && state != states.pogo && state != states.machslide  && state != states.freefall && (state != states.mach2 or other.baddieID.object_index == obj_pizzaballOLD) && state != states.handstandjump && state != states.hurt && other.baddieID.state != states.chase
			&& other.baddieID.bumpable && !other.baddieID.invincible 
			&& ((other.baddieID.object_index != obj_pizzice && other.baddieID.object_index != obj_ninja) or other.baddieID.state != states.charge)
			{
				scr_soundeffect(sfx_bumpwall)
				
				if state != states.bombpep && state != states.mach1 && state != states.crouchslide && state != states.machroll && state != states.mach2 && state != states.mach3 && state != states.revolver && state != states.dynamite && state != states.climbwall
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
				if !other.baddieID.thrown or global.gameplay != 0 // && (character = "P" or character = "N" or character == "SP" or other.baddieID.object_index == obj_pizzaballOLD)
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
					if other.baddieID.thrown == true && !key_up 
					{
						sprite_index = choose(spr_suplexmash1,spr_suplexmash2,spr_suplexmash3, spr_suplexmash4, spr_punch)
						other.baddieID.hsp = xscale * 25
						other.baddieID.vsp = 0
					}
					else if !key_up
					{
						sprite_index = choose(spr_suplexmash1,spr_suplexmash2,spr_suplexmash3, spr_suplexmash4, spr_punch)
						other.baddieID.hsp = xscale * 6
						
						image_index = 0
						state = states.tackle
						movespeed = 0
						
						other.baddieID.vsp = -6
						scr_throwenemy()
					}
					else
					{
						sprite_index = choose(spr_suplexmash1,spr_suplexmash2,spr_suplexmash3, spr_suplexmash4, spr_punch)
						other.baddieID.vsp = -14
						other.baddieID.hsp = 0
					}
					
					scr_soundeffect(sfx_killingblow)
					
					image_index = 0
					state = states.tackle
					movespeed = 0
					
					scr_throwenemy()
				}
			}
		}
	}
}