if (obj_player1.state = states.bombpep && obj_player1.sprite_index != obj_player1.spr_bombpepend
&& (place_meeting(x+1,y,obj_player1) or place_meeting(x-1,y,obj_player1) or place_meeting(x,y-1,obj_player1) or place_meeting(x,y+1,obj_player1))) 
{
	with (obj_player1)
	{
		instance_create(x,y,obj_bombexplosion)
		hurted = true
		vsp = -4
		image_index = 0
		sprite_index = spr_bombpepend
		state = states.bombpep
		bombpeptimer = 0
	}
}

if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;