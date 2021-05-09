function scr_player_pizzathrow() {
	movespeed = 0

	mach2 =0
	hsp = 0


	xscale = -1


	jumpstop = false


	//Normal
	if global.shroomfollow = false &&
	global.cheesefollow = false &&
	global.tomatofollow = false &&
	global.sausagefollow = false &&
	global.pineapplefollow = false
	{
	    state = states.normal
	    landAnim = false
	    mach2 = 0
	    image_index = 0
	    }
    



	//Actual Pizza
	if (global.shroomfollow = true or
	global.cheesefollow = true or
	global.tomatofollow = true or
	global.sausagefollow = true or
	global.pineapplefollow = true)// && !(instance_exists(obj_toppinsacrifice)) 
	{
	//instance_create(x,y-75,obj_toppinsacrifice)
	sprite_index = spr_player_pizzathrow
	}

	/*
	if instance_exists(obj_toppinsacrifice)
	{

	if obj_toppinsacrifice.throwed = false && key_slap2
	{

	obj_toppinsacrifice.hsp = -4
	obj_toppinsacrifice.throwed = true
	obj_toppinsacrifice.vsp = -10
	}
	}
	*/

	//Animations




	if key_slap2
	{

	sprite_index = spr_player_pizzathrow2
	}

	if floor(image_index) = 3
	sprite_index = spr_player_pizzathrow3


	image_speed = 0.35


}
