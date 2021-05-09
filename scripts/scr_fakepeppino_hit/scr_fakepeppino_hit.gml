function scr_fakepeppino_hit() {
	hsp = image_xscale * movespeed

	//Grab player
	if place_meeting(x,y,obj_player)  &&  obj_player.state != states.gameover
	{
	
		with obj_player
		if state != states.hurt && hurted = false && cutscene = false && state != states.bump 
		{
		if state != states.backbreaker
		{
	state = states.backbreaker
	sprite_index = spr_player_hurt
	x = other.x + (other.image_xscale * 50)
	y = other.y
		}
		with other
	if sprite_index != spr_fakepeppino_grabattack
	{
	image_index = 0
	sprite_index = spr_fakepeppino_grabattack
	movespeed = 0
	}
		}
	}


	if floor(image_index) = image_number - 1 && sprite_index= spr_fakepeppino_grabdash
	{
	state = states.idle
	image_index = 0
	sprite_index= spr_fakepeppino_idle
	movespeed =0
	}

	//Attack
	if sprite_index = spr_fakepeppino_grabattack && floor(image_index) = image_number -1
	{
	with obj_player

	{
	
	
	if state != states.hurt
	//scr_sound(sound_touchspike)
	global.hurtcounter += 1
	alarm[8] = 60
	alarm[7] = 120
	hurted = true
	if xscale = other.image_xscale
	sprite_index = spr_hurtjump
	else
	sprite_index = spr_hurt
	movespeed = 8
	vsp = -5
	timeuntilhpback = 300

	if global.collect > 100
	global.collect -= 100
	else
	global.collect = 0

	if global.collect != 0
	{
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	instance_create(x,y,obj_pizzaloss)
	}

	if obj_player.shotgunAnim = false 
	global.playerhealth -= 1
	else if obj_player.shotgunAnim = true
	{
	obj_player.shotgunAnim = false
	with instance_create(x,y,obj_knightdebris)
	    {
	    sprite_index = spr_shotgun
	    image_speed = 0.35
	    }
	    }


	instance_create(x, y, obj_spikehurteffect)
	state = states.hurt
	image_index = 0
	flash = true


	}

	state = states.idle
	sprite_index = spr_fakepeppino_idle
	image_index = 0
	}






}
