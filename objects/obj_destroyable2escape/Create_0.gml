global.breaksound = 0
if obj_player1.character = "N"
{
	sprite_index = spr_halloweensmallblockescape
	if check_sugary()
		sprite_index = spr_destroyable2escape_ss_noise
}
if obj_player1.character = "SP"
	sprite_index = spr_destroyable2escape_ss
depth = 1