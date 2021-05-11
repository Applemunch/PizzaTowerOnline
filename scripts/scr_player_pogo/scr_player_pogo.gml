function scr_player_pogo() {
	move = key_left + key_right;


	if move = 0 && hsp != 0
	hsp = xscale * movespeed 
	else
	hsp = move * movespeed 






	if move != 0 && !scr_solid(x,y+1)
	{
	if movespeed < 6
	{
	movespeed += 0.5
	}
	}

	if move != xscale or move = 0 or (scr_solidwall(x+xscale,y) && !place_meeting(x+xscale, y, obj_destructibles))
	{
	movespeed =0
	pogospeed = 6
	}

	if sign(hsp) != 0
	xscale = sign(hsp)
	else if move != 0
	{
	xscale = move
	}





	if move != xscale
	pogospeed = 6

	if grounded && !key_slap2 && (sprite_index != spr_playerN_pogobounce && sprite_index != spr_playerN_pogobouncemach)
	{
		scr_soundeffect(sfx_Npogo3)
		pogospeedprev = false
		image_index = 0
	movespeed = 0
	vsp = 0
	if pogochargeactive = true
	sprite_index = spr_playerN_pogobouncemach
	else
	sprite_index = spr_playerN_pogobounce
	instance_create(x,y,obj_landcloud)
	}



	if floor(image_index) = 3 &&  pogospeedprev = false && (sprite_index = spr_playerN_pogobounce or sprite_index = spr_playerN_pogobouncemach)
	{
		if key_jump2
		vsp = -12
		else if key_down
		vsp = -3
		else
	vsp = -6	




	if move = xscale && movespeed < 12
	pogospeed += 4
	if move = -xscale && movespeed > 0
	pogospeed = 6
	movespeed = pogospeed
	pogospeedprev = true
	}



	if floor(image_index) = image_number -1 && (sprite_index = spr_playerN_pogobounce or sprite_index = spr_playerN_pogofallmach or sprite_index = spr_playerN_pogobouncemach or sprite_index = spr_playerN_pogostart)
	{
		if pogochargeactive = true
		sprite_index = spr_playerN_pogofallmach
		else
	sprite_index = spr_playerN_pogofall
	}


	if pogospeed > 12 && pogochargeactive = false
	{
	pogochargeactive = true
	pogocharge = 100
	flash = true
	}

	if movespeed > 12
	pogocharge = 100

	if !key_attack 
	state =states.normal


	//Noise Bomb
	if key_shoot2 && character = "N" && noisebombcooldown <= 0
	{
		scr_soundeffect(sfx_noisewoah)
		noisebombcooldown = 30
		with instance_create(x,y,obj_playerbomb)
		image_xscale = other.xscale
	}



	image_speed = 0.35
	
	//Taunt
	if key_taunt2
		scr_player_taunt();
}
