hsp = image_xscale * movespeed

if !kick
{
	if scr_solid(x + image_xscale, y)
		image_xscale *= -1
	if grounded && global.gameplay != 0
		instance_destroy()
	
	mask_index = spr_player_mask

	if scr_solid(x,y+1) && vsp > 0
		movespeed = 0

	if floor(image_index) = image_number -1 && sprite_index = spr_playerN_noisebombland
	{
		sprite_index = spr_playerN_noisebomb
		vsp = -5
		movespeed = 6
	}

	if !sync && (place_meeting(x+hsp,y+vsp,obj_destructibles) or place_meeting(x,y,obj_baddie))
		instance_destroy()

	if countdown <= 0
		instance_destroy()

	//Go back from hitting wall
	if floor(image_index) = image_number -1  && sprite_index = spr_playerN_noisebombhitwall 
		sprite_index = spr_playerN_noisebomb

	//Flash 
	if sprite_index = spr_playerN_noisebomb && countdown < (120/2)
		sprite_index = spr_playerN_noisebombflash

	//Check if the player is touching the bomb
	if !place_meeting(x,y,obj_player1)
		playercollision = false

	//Countdown for explosion
	if sprite_index = spr_playerN_noisebomb or sprite_index = spr_playerN_noisebombflash
		countdown--

	//Land animation
	if grounded && sprite_index != spr_playerN_noisebombland && vsp > 0
	{
		movespeed = 0
		sprite_index = spr_playerN_noisebombland
		image_index = 0
	}
}
else
{
	mask_index = spr_crouchmask
	if scr_solidwall(x+hsp,y) && !place_meeting(x+hsp,y,obj_destructibles) && sprite_index != spr_playerN_noisebombhitwall
	{
		if global.gameplay == 0
		{
			sprite_index = spr_playerN_noisebombhitwall
			image_index = 0
			hsp = 0
		}
		else
			instance_destroy();
	}
		
	if place_meeting(x,y,obj_pizzaballOLD)
		instance_destroy()

	//Destroy block
	with instance_place(x+hsp,y,obj_destructibles)
		instance_destroy()

	with instance_place(x,y,obj_baddie)
	{
		if object_index != obj_pizzaballOLD
		{
			instance_destroy()
			instance_destroy(other)
		}
	}
}

scr_collide()
if sprite_index == spr_playerN_noisebombhitwall && image_index >= image_number - 1
{
	image_index = 0;
	kick = false;
}