hp = 2
if obj_player1.character == "N"
{
	sprite_index = spr_halloweenbigblockescape
	if check_sugary()
		sprite_index = spr_destroyable2bigescape_ss_noise
}
else if obj_player1.character == "SP"
	sprite_index = spr_destroyable2bigescape_ss
else if global.gameplay != 0
	sprite_index = spr_bigbreakableescape_NEW

depth = 1
content = obj_null
image_speed = 0.35;
image_index = random(image_number);
