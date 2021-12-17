if obj_player1.character == "N"
{
	sprite_index = spr_halloweensmallblock
	if check_sugary()
		sprite_index = spr_destroyable2_ss_noise
}
else if obj_player1.character == "SP"
	sprite_index = spr_destroyable2_ss
else if check_sugary()
	sprite_index = spr_destroyable2_ss_pizza
else if global.gameplay != 0
	sprite_index = spr_destroyable2_NEW

if string_startswith(room_get_name(room), "strongcold")
	sprite_index = spr_xmasblock

depth = 1;
image_speed = 0.35;
image_index = x / sprite_width;
