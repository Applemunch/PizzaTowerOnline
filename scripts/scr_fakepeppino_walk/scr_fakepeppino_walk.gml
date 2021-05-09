function scr_fakepeppino_walk() {

	hsp = image_xscale * movespeed


	//Crawl
	if (scr_solid(x,y-16)) && (scr_solid(x,y-32)) 
	{
	sprite_index = spr_fakepeppino_crawl
	movespeed = 4
	}
	else
	{
	sprite_index = spr_fakepeppino_walk
	movespeed = 6
	}

	//Jump when near wall
	if scr_solid(x+hsp * 2,y-1) && scr_solid(x+hsp ,y) && !place_meeting(x,y+1,obj_slope)  && !place_meeting(x+hsp,y,obj_destructibles) && sprite_index = spr_fakepeppino_walk
	{
		image_index = 0
	state = states.jump
	sprite_index = spr_fakepeppino_jumpstart
	movespeed = 0
	}

	//Stop and turn if player is not in front of him
	if image_xscale != -sign(x - obj_player.x) && sprite_index = spr_fakepeppino_walk
	{
		movespeed = 0
		sprite_index = spr_fakepeppino_idle
		image_index= 0
	state =states.idle	
	
	}






}
