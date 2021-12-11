if obj_player1.character == "N"
{
	sprite_index = spr_halloweensmallblockescape
	if check_sugary()
		sprite_index = spr_destroyable2escape_ss_noise
}
else if obj_player1.character == "SP"
	sprite_index = spr_destroyable2escape_ss
else if global.gameplay != 0
	sprite_index = spr_destroyable2escape_NEW

depth = 1
image_speed = 0.35;