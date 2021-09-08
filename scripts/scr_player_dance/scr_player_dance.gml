function scr_player_dance()
{
	hsp = 0;
	
	image_speed = 0.35;
	/*
	if character == "G"
		sprite_index = spr_playerG_spookydance;
	*/
	
	var move = key_left + key_right;
	if move != 0
		state = states.normal;
}