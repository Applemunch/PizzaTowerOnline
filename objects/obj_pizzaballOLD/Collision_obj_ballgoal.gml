if vsp >= 0 or (state == states.grabbed && obj_player1.vsp >= 0)
{
	instance_destroy();
	instance_destroy(obj_pizzaballblock);
	
	with obj_player1
	{
		state = states.backbreaker
		
		sprite_index = spr_victory
		if character == "P"
			sprite_index = spr_player_levelcomplete
		
		image_index = 0;
	}
}