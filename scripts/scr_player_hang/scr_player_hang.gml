function scr_player_hang() {



	hsp = 0


	if sprite_index = spr_playerN_wallclingstart && floor(image_index) = image_number-1
	sprite_index = spr_playerN_wallcling


	if place_meeting(x - xscale, y, obj_railv)
		vsp = -3
	else
		vsp = 0

	wallclingcooldown = 0


	if floor(image_index) = image_number - 1 
	{
		scr_soundeffect(sfx_jump)
			scr_soundeffect(sfx_woosh)
		jumpstop = false
	vsp = -15
	state = states.jump
	sprite_index = spr_playerN_noisebombspinjump
	image_index = 0
	with instance_create(x,y,obj_jumpdust)
	image_xscale = other.xscale
	}



	image_speed = 0.35




}
