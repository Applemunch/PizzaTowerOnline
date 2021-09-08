function scr_player_rotate()
{
	vsp -= 0.2;
	y += vsp;
	image_speed = vsp / 20;
	
	switch character
	{
		default:
			sprite_index = spr_player_rotate;
			break;
		case "N":
			sprite_index = spr_playerN_rotate;
			break;
		case "S":
			sprite_index = spr_snick_rotate;
			break;
		case "V":
			sprite_index = spr_playerV_rotate;
			break;
		case "SP":
			sprite_index = spr_playerSP_rotate;
			break;
	}
}