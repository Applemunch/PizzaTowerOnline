function scr_player_superslam()
{
	if baddiegrabbedID == 0 or baddiegrabbedID == obj_null
	{
		state = states.normal;
		exit;
	}

	if sprite_index == spr_piledriver or sprite_index == spr_playerSP_piledriverstart
	{
		move = key_left + key_right;
		hsp = move * movespeed;
	}
	else
	{
		move = 0
		hsp = 0
	}

	if grounded && !place_meeting(x, y + 1, obj_destructibles) && sprite_index == spr_piledriver && vsp > 0
	{
		scr_soundeffect(sfx_groundpound)

	    sprite_index = spr_piledriverland
	    jumpAnim = true

	    image_index = 0

	    with (obj_camera) 
		{
		    shake_mag=20;
		    shake_mag_acc=40/room_speed;
		}

		hsp = 0


		bounce = false

		instance_create(x,y+35,obj_bangeffect)
	    instance_create(x,y,obj_landcloud)
	    freefallstart = 0



	    with (obj_baddie)
	    {
		    if grounded && point_in_camera(x, y, view_camera[0])
			{

				image_index = 0

				vsp = -7
				hsp = 0

			}
		}
	}

	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = true
	
	if floor(image_index) = image_number - 1
	{
		if sprite_index == spr_playerSP_piledriverstart
			sprite_index = spr_piledriver;
		
		if sprite_index = spr_piledriverland
		&& (!instance_exists(baddiegrabbedID) or baddiegrabbedID == obj_otherplayer)
		{
			state = states.normal;
			if baddiegrabbedID == obj_otherplayer
			{
				state = states.jump
				vsp = -8
				sprite_index = spr_machfreefall
			}
		}
	}

	//Movespeed
	if move != 0 
	{
		if movespeed < 6
		{
			movespeed += 0.5
		}
		else if floor(movespeed)= 6
		{
			movespeed = 6
		}
	}
	else
		movespeed = 0

	if movespeed > 6
		movespeed -= 0.1

	if character = "N" && move != 0
	{
		xscale = move
	}

	image_speed = 0.35
}
