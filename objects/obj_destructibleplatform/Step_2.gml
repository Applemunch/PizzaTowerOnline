if place_meeting(x, y, obj_otherplayer) && !falling
	image_alpha = 0.5;
else
	image_alpha = 1;

if floor(image_index) == image_number - 1
{
	if global.gameplay == 0
	{
		if sprite_index = spr_cheeseblockOLD
		{
			falling = true;
			x = -100;
			y = -100;
			image_speed = 0;
			visible = false;
		}
		else if sprite_index == spr_cheeseblockreform
		{
			falling = false;
			sprite_index = spr_cheeseblockOLD;
			image_speed = 0;
			image_index = 0;
		}
	}
	else
	{
		if sprite_index == spr_cheeseblock
	    {
	        sprite_index = spr_cheeseblock_falling;
	        falling = true;
	        x = -100;
	        y = -100;
	    }
	    else if sprite_index == spr_cheeseblock_reform
	    {
	        falling = false;
	        sprite_index = spr_cheeseblock;
	        image_index = 0;
	        image_speed = 0;
	    }
	}
}

if (visible == false or sprite_index == spr_cheeseblock_falling) && reset > 0
	reset--;

if reset <= 0 && !place_meeting(xstart, ystart, obj_player1) && !place_meeting(xstart, ystart, obj_pizzaballOLD)
{
	reset = 100;
	visible = true;
	image_speed = 0.35;
	falling = false;
	x = xstart;
	y = ystart;
	
	if global.gameplay == 0
		sprite_index = spr_cheeseblockreform;
	else
		sprite_index = spr_cheeseblock_reform;
}