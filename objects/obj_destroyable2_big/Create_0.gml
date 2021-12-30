hp = 2

if obj_player1.character == "N"
{
	sprite_index = spr_halloweenbigblock
	if check_sugary()
		sprite_index = spr_destroyable2big_ss_noise
}
else if obj_player1.character == "SP"
	sprite_index = spr_destroyable2big_ss
else if check_sugary()
	sprite_index = spr_bigdestroyable_ss_pizza
else if !scr_stylecheck(0, 2)
	sprite_index = spr_bigbreakable_NEW

if string_startswith(room_get_name(room), "strongcold")
	sprite_index = spr_xmasbigblock

depth = 1
content = obj_null
image_speed = 0.35;
image_index = random(image_number);
