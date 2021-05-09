function scr_fakepeppino_jump() {
	hsp = image_xscale * movespeed


	//Prepare to jump
	if sprite_index = spr_fakepeppino_jumpstart && floor(image_index) = image_number - 1
	{
		image_index = 0
		vsp = -15
	sprite_index = spr_fakepeppino_jump
	movespeed = 8
	}

	//Change sprite to falling
	if sprite_index = spr_fakepeppino_jump && floor(image_index) = image_number - 1
	{
		image_index = 0
		sprite_index = spr_fakepeppino_fall
	}
	//Land
	if (scr_solid(x,y+1) or place_meeting(x,y+1,obj_slope)or place_meeting(x,y+1,obj_platform))  && sprite_index = spr_fakepeppino_fall
	{
	image_index = 0
	sprite_index = spr_fakepeppino_land
	state = states.idle
	movespeed = 0
	}






}
