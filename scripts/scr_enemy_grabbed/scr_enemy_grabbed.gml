function scr_enemy_grabbed()
{
	if object_index == obj_treasureguy
	{
	    var player = asset_get_index("obj_player" + string(grabbedby));
	    with player
	    {
	        sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
	        image_index = 0
	        state = states.tackle
	        movespeed = 3
	        vsp = -3
	    }
	    instance_destroy()
	}
	
	if grabbedby == 1
	{
		image_xscale = -obj_player1.xscale
		stunned = 200					
		
		var _state = obj_player1.state;
		if _state == states.hitlag
			_state = obj_player1.tauntstoredstate;
		
		obj_player1.baddiegrabbedID = id
		
		if _state == states.grabbing or _state = states.grab or _state = states._throw or _state = states.slam or _state = states.tacklecharge or _state == states.backbreaker
		{
			scr_enemy_grabpos(obj_player1);
			visible = _state != states.backbreaker;
		}
		else
			visible = true;
	
		with (obj_player1)
		{
			suplexhavetomash = other.hp - 1
			//Suplex mash
			scr_getinput();

			move = key_left2 + key_right2;

			if key_slap && sprite_index == spr_grab
			{
				global.hit += 1
				if other.object_index = obj_pizzaballOLD
					global.golfhit += 1
				global.combotime = 60
				image_index = 0
				sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4)
				other.hp -= 1

				instance_create(other.x,other.y,obj_slapstar)
				instance_create(other.x,other.y,obj_baddiegibs)
				other.flash = true
				        with (obj_camera) {

				    shake_mag=3;
				    shake_mag_acc=3/room_speed;
				}
			}
			
			if !((_state = states.grab) or  (_state = states.finishingblow) or (_state = states.grabbing) or (_state = states._throw) or (_state = states.slam) or (_state = states.tacklecharge) or (_state = states.punch) or (_state = states.superslam) or (_state = states.backkick) or (_state = states.uppunch) or (_state = states.shoulder) or (_state == states.backbreaker))
			{
				other.x = x 
				other.y = y 
				other.state = states.stun
				other.image_index = 0
			}
		}

		hsp = 0
		
		if _state = states.punch or _state == states.parry
		{
			alarm[3] = 3
			global.hit += 1
			if object_index = obj_pizzaballOLD
			global.golfhit += 1
			hp -= 1
			instance_create(x +(obj_player1.xscale * 30), y, obj_bumpeffect)
			alarm[1] = 5

			thrown = true
			x = obj_player1.x
			vsp = 0
			y = obj_player1.y

			state = states.stun
			hsp = -image_xscale * 25
			grav = 0
			
			global.combotime = 60
			instance_create(x,y,obj_slapstar)
			instance_create(x,y,obj_baddiegibs)
			flash = true
			
			with (obj_camera) 
			{
			    shake_mag=3;
			    shake_mag_acc=3/room_speed;
			}

		}

		if _state = states.finishingblow && obj_player1.image_index < 5
		{
			x = obj_player1.x + (obj_player1.xscale * 60)
			y = obj_player1.y	
			obj_player1.baddiegrabbedID = id
		}




		if _state = states.backkick 
		{
			alarm[3] = 3
		global.hit += 1
		if object_index = obj_pizzaballOLD
		global.golfhit += 1
		hp -= 1
		instance_create(x +(-obj_player1.xscale * 50), y, obj_bumpeffect)
		alarm[1] = 5

		thrown = true
		x = obj_player1.x
		y = obj_player1.y
		state = states.stun
		image_xscale *= -1
		hsp = -image_xscale * 20

		vsp = -7

		global.combotime = 60
		instance_create(x,y,obj_slapstar)
		instance_create(x,y,obj_baddiegibs)
		flash = true
		        with (obj_camera) {

		    shake_mag=3;
		    shake_mag_acc=3/room_speed;
		}

		}

		if _state = states.shoulder 
		{
			alarm[3] = 3
		global.hit += 1
		if object_index = obj_pizzaballOLD
		global.golfhit += 1
		hp -= 1
		instance_create(x , y+20, obj_bumpeffect)
		alarm[1] = 5

		thrown = true
		x =obj_player1.x
		y = obj_player1.y
		state = states.stun

		if obj_player1.sprite_index = spr_player_shoulder
		vsp = 15
		if obj_player1.sprite_index = spr_player_diagonaldownthrow
		{
			hsp  = -image_xscale  * 10
		vsp = 15
		}
		if obj_player1.sprite_index = spr_player_diagonalupthrow
		{
				hsp  = -image_xscale  * 10
		vsp = -15
		}

		global.combotime = 60
		instance_create(x,y,obj_slapstar)
		instance_create(x,y,obj_baddiegibs)
		flash = true
		        with (obj_camera) {

		    shake_mag=3;
		    shake_mag_acc=3/room_speed;
		}

		}

		if place_meeting(x,y,obj_swordhitbox)
		{
			hp -= 1
	
			instance_create(x,y,obj_slapstar)
			instance_create(x,y,obj_slapstar)
			instance_create(x,y,obj_slapstar)
			instance_create(x,y,obj_baddiegibs)
			instance_create(x,y,obj_baddiegibs)
			instance_create(x,y,obj_baddiegibs)
			with (obj_camera)
			{
			    shake_mag=3;
			    shake_mag_acc=3/room_speed;
			}
			
			if (scr_solid(x, y) && object_index == obj_pizzaballOLD)
			or place_meeting(x + (image_xscale * 32), y, obj_onwaybigblock)
			{
				x = obj_player1.x
				y = obj_player1.y
			}
			
			if place_meeting(x, y, obj_slope) && hp > 0
				hp = 0;
			
			alarm[3] = 3
			global.hit += 1
			if object_index = obj_pizzaballOLD
				global.golfhit += 1
			global.combotime = 60
			alarm[1] = 5

			thrown = true
			state = states.stun
			with (obj_player1)
			{
				move = key_right + key_left
				if sprite_index == spr_uppercutfinishingblow
				{
					other.hsp = 0
					other.vsp = -25
				}
				else
				{
					other.hsp = -other.image_xscale * 25
					other.vsp = -6	
				}
			}
			
			if global.gameplay != 0
			{
				repeat 3
					instance_create(x, y, obj_baddiegibs)
				instance_create(x, y, obj_bangeffect)
					
				var lag = 5;
				
				hitLag = lag;
				hitX = x;
				hitY = --y;
				state = states.hit;
				
				hithsp = hsp;
				hitvsp = vsp;
				hsp = 0;
				vsp = 0;
					
				grounded = false;
			}
		}


		if _state = states._throw 
		{

		global.hit += 1
		if object_index = obj_pizzaballOLD
		global.golfhit += 1

		alarm[1] = 5

		thrown = true
		x =obj_player1.x
		y = obj_player1.y
		state = states.stun
		hsp = -image_xscale * 8
		vsp = -6
		}





		if _state = states.uppunch
		{
			alarm[3] = 3
		global.hit += 1
		if object_index = obj_pizzaballOLD
		global.golfhit += 1
		hp -= 1

		instance_create(x +(-obj_player1.xscale * 15), y-50, obj_bumpeffect)
		alarm[1] = 5

		thrown = true
		x =obj_player1.x
		y = obj_player1.y
		hsp = -image_xscale * 2
		state = states.stun
		vsp = -20


		global.combotime = 60
		instance_create(x,y,obj_slapstar)
		instance_create(x,y,obj_baddiegibs)
		flash = true
		        with (obj_camera) {

		    shake_mag=3;
		    shake_mag_acc=3/room_speed;
		}


		}


		//if obj_player1.state = states.backbreaker && floor(obj_player1.image_index) < 2
		//{
		//x = obj_player1.x + (-image_xscale *8)
		//y = obj_player1.y - 45
		//}

		//if obj_player1.state = states.backbreaker && floor(obj_player1.image_index) >= 2
		//{
		//x = obj_player1.x
		//y = obj_player1.y 
		//state = states.hit
		//hsp = -image_xscale * 5
		//vsp = -12
		//instance_create(x,y,obj_bangeffect)
		//}

		//Charge
		if _state = states.tacklecharge 
		{
			x = obj_player1.x + (obj_player1.xscale * 15)
			y = obj_player1.y 
		}

		if obj_player1.sprite_index = obj_player1.spr_piledriverland && (floor(obj_player1.image_index) = obj_player1.image_number - 1 or obj_player1.character == "SP")
		{
			with (obj_player1)
			{
				state = states.jump
				vsp = -8
				sprite_index = spr_machfreefall
			}
			
			instance_create(x,y,obj_slapstar)
			instance_create(x,y,obj_baddiegibs)
			flash = true
			global.combotime = 60
			if object_index == obj_pizzaballOLD
				global.golfhit += 1
			global.hit += 1
			hp -= 5
			alarm[1] = 5
			thrown = true
			x = obj_player1.x
			y = obj_player1.y
			state = states.stun
			hsp = -image_xscale * 10
			vsp = -10
		}
		
		if (_state == states.superslam
		&& obj_player1.sprite_index == obj_player1.spr_piledriver
		or obj_player1.sprite_index == spr_playerSP_piledriverstart) 
			scr_enemy_driverpos(obj_player1);
		
		else if (_state == states.grab
		&& obj_player1.sprite_index == obj_player1.spr_swingding)
		{
			if floor(obj_player1.image_index) = 0
			{
				depth = -8
				x = obj_player1.x + (obj_player1.xscale * 25)
				y = obj_player1.y
			}
			if floor(obj_player1.image_index) = 1
			{
				depth = -8
				x = obj_player1.x 
				y = obj_player1.y
			}
			if floor(obj_player1.image_index) = 2
			{
				depth = -8
				x = obj_player1.x + (obj_player1.xscale * -25)
				y = obj_player1.y
			}
			if floor(obj_player1.image_index) = 3
			{
				depth = 0
				x = obj_player1.x + (obj_player1.xscale * -50)
				y = obj_player1.y
			}
			if floor(obj_player1.image_index) = 4
			{
				depth = 0
				x = obj_player1.x + (obj_player1.xscale * -25)
				y = obj_player1.y
			}
			if floor(obj_player1.image_index) = 5
			{
				depth = 0
				x = obj_player1.x 
				y = obj_player1.y
			}
			if floor(obj_player1.image_index) = 6
			{
				depth = 0
				x = obj_player1.x + (obj_player1.xscale * 25)
				y = obj_player1.y
			}
			if floor(obj_player1.image_index) = 7
			{
				depth = 0
				x = obj_player1.x + (obj_player1.xscale * 50)
				y = obj_player1.y
			}
		}
		else
			depth = 0;
	}
	
	sprite_index = grabbedspr
	image_speed = 0.35
}