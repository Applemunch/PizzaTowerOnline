/// @description Insert description here
// You can write your code in this editor
//Tomato block 
with obj_player1
{
	if place_meeting(x, y + 1, other) && state != states.gameover
	{
		endtumble = true;
		fallinganimation = 0;
		if key_jump2
		{
            vsp = -20;
			if state == states.jump && character == "P"
				sprite_index = spr_player_Sjump;
		}
		else
			vsp = -11;
		suplexmove = false;
		
		with other
		{
			image_index = 0;
			image_speed = 0.35;
		}
	}
}

with obj_baddie
{
	if place_meeting(x, y + 1, other) && state != states.grabbed && hp > 0
	{
		thrown = false;
		vsp = -11;
		
		with other
		{
			image_index = 0;
			image_speed = 0.35;
		}
	}
}

with obj_antonball
{
	if place_meeting(x, y + 1, other)
	{
		vsp = -8;
		
		with other
		{
			image_index = 0;
			image_speed = 0.35;
		}
	}
}