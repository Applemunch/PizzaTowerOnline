if vsp >= 0
{
	instance_destroy()
	instance_destroy(obj_pizzaballblock)
	obj_player1.state = states.backbreaker
	
	if obj_player1.character = "P"
		obj_player1.sprite_index = spr_player_levelcomplete
	else
		obj_player1.sprite_index = obj_player1.spr_victory
	
	obj_player1.image_index = 0
}