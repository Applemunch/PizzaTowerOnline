if grounded && !grabbed
	thrown = false

if grabbed == true
{
	image_xscale = -playerid.xscale
	grav = 0
	
	playerid.baddiegrabbedID = id
	var _state = playerid.state;
	if _state == states.hitlag
		_state = playerid.tauntstoredstate;
	
	if _state = states.finishingblow or _state = states.grabbing or _state = states.grab or _state = states._throw or _state = states.slam or _state = states.tacklecharge or _state == states.backbreaker
	{
		thrown = false
		grav = 0
		grounded = false
		x = playerid.x 
		
		scr_enemy_grabpos(playerid);
		visible = _state != states.backbreaker;
	}
	else
		visible = true;
	
	with (playerid)
	{
		//Suplex mash
		scr_getinput();

		move = key_left2 + key_right2;


		if !((_state = states.finishingblow) or(_state = states.grab) or (_state = states.grabbing) or (_state = states._throw) or (_state = states.slam) or (_state = states.tacklecharge) or (_state = states.superslam) or (_state = states.backkick) or (_state = states.uppunch) or (_state = states.shoulder) or _state == states.backbreaker)
		{
			other.grav = 0.5
			other.x = x
			other.y = y - 1
			
			other.grabbed = false
		}
	}
	
	hsp = 0
	
	
	if _state = states.finishingblow
	{
		x = playerid.x + (playerid.xscale * clipin);
		y = playerid.y
			
		// clip in bounds
		with playerid
			if scr_solid(x + xscale, y)
			{
				other.clipin = 1;
				other.x = x;
			}
		
		while scr_solid(x, y) && clipin > 0
		{
			clipin--;
			x = playerid.x + (playerid.xscale * clipin);
		}
	}


	if (_state = states.grab && playerid.sprite_index = playerid.spr_swingding)
	{
		if floor(playerid.image_index) = 0
		{
			depth = -8
			x = playerid.x + (playerid.xscale * 25)
			y = playerid.y
		}
		if floor(playerid.image_index) = 1
		{
			depth = -8
			x = playerid.x 
			y = playerid.y
		}
		if floor(playerid.image_index) = 2
		{
			depth = -8
			x = playerid.x + (playerid.xscale * -25)
			y = playerid.y
		}
		if floor(playerid.image_index) = 3
		{
			depth = 0
			x = playerid.x + (playerid.xscale * -50)
			y = playerid.y
		}
		if floor(playerid.image_index) = 4
		{
			depth = 0
			x = playerid.x + (playerid.xscale * -25)
			y = playerid.y
		}
		if floor(playerid.image_index) = 5
		{
			depth = 0
			x = playerid.x 
			y = playerid.y
		}
		if floor(playerid.image_index) = 6
		{
			depth = 0
			x = playerid.x + (playerid.xscale * 25)
			y = playerid.y
		}
		if floor(playerid.image_index) = 7
		{
			depth = 0
			x = playerid.x + (playerid.xscale * 50)
			y = playerid.y
		}
	}
	else
		depth = -6





	if _state = states.shoulder 
	{
		grav = 0.5
		instance_create(x , y+20, obj_bumpeffect)
		grabbed = false
		thrown = true
		x = playerid.x
		y = playerid.y


		if playerid.sprite_index = spr_player_shoulder
			vsp = 15
		if playerid.sprite_index = spr_player_diagonaldownthrow
		{
			hsp  = -image_xscale  * 10
			vsp = 15
		}
		if playerid.sprite_index = spr_player_diagonalupthrow
		{
			hsp  = -image_xscale  * 10
			vsp = -15
		}

		repeat 6
			instance_create(x,y,obj_slapstar)

	    with (obj_camera) {

		    shake_mag=3;
		    shake_mag_acc=3/room_speed;
		}

	}



	if _state = states._throw 
	{
		grav = 0.5
		grabbed = false

		thrown = true
		x = playerid.x
		y = playerid.y

		hsp = -image_xscale * 10
		vsp = -10
	}





	if _state = states.uppunch
	{
		instance_create(x +(-playerid.xscale * 15), y-50, obj_bumpeffect)

		grav = 0.5
		thrown = true


		hsp = -image_xscale * 2
		grabbed = false
		vsp = -20
		
		instance_create(x,y,obj_slapstar)
		flash = true
		
	    with (obj_camera) {

		    shake_mag=3;
		    shake_mag_acc=3/room_speed;
		}
	}


	//if _state = states.backbreaker && floor(playerid.image_index) < 2
	//{
	//x = playerid.x + (-image_xscale *8)
	//y = playerid.y - 45
	//}

	//if _state = states.backbreaker && floor(playerid.image_index) >= 2
	//{ 
	//x = playerid.x
	//y = playerid.y 
	//state = states.hit
	//hsp = -image_xscale * 5
	//vsp = -12
	//instance_create(x,y,obj_bangeffect)
	//}

	//Charge
	if _state = states.tacklecharge 
	{
		x = playerid.x + (playerid.xscale * 15)
		y = playerid.y
	}



	if _state = states.superslam
	{
		scr_enemy_driverpos(playerid);
		
		if playerid.sprite_index = playerid.spr_piledriverland 
		&& (floor(playerid.image_index) = playerid.image_number - 1)
		{
			depth = -5
			repeat 6
				instance_create(x,y,obj_slapstar)

			grabbed = false
			thrown = true
			x = playerid.x
			y = playerid.y
			grav = 0.5
			hsp = -image_xscale * 10
			vsp = -10
			
			if global.gameplay != 0
			{
				with playerid
				{
					jumpAnim = true;
				    state = states.jump;
				    sprite_index = spr_suplexland;
				    vsp = -11;
				    jumpstop = true;
				    image_index = 0;
				}
			}
			else
			{
				with playerid
				{
					state = states.jump
					vsp = -8
					sprite_index = spr_machfreefall
				}
			}
		}
	}
}
else
	clipin = 50;

if vsp > 0 && grounded 
	hsp = 0

var g = grounded;
if !grabbed
	scr_collide()
else if sprite_index == spr_punchball
	y -= 20;

if grounded && !g && sprite_index == spr_punchball
	scr_soundeffect(sfx_punchball_bounce);

if place_meeting(x, y, obj_boilingsauce)
	depth = 106;

if place_meeting(x,y,obj_swordhitbox) && thrown == false && stuntouchbuffer <= 0
&& !(object_index == obj_tombstone && unpickable)
{
	grabbed = false
	thrown = true
	
	repeat 6
		instance_create(x,y,obj_slapstar)
	with (obj_camera) {

	    shake_mag=3;
	    shake_mag_acc=3/room_speed;
	}

	if scr_solid(x,y)
	{
		x = playerid.x
		y = playerid.y
	}

	grav = 0.5

	other.alarm[8] = 60
	other.alarm[7] = 120
	with playerid
	{
		move = key_right + key_left
		if sprite_index = spr_uppercutfinishingblow
			other.vsp = -25
		else
		{
			other.hsp = xscale * 15
			other.vsp = -6	
		}
	}
}

if stuntouchbuffer > 0
	stuntouchbuffer --
