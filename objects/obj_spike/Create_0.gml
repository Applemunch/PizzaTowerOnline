image_speed = 0.35
depth = 1

if string_startswith(room_get_name(room), "etb_")
{
	sprite_index = spr_spitcheese_spike;
	x += sprite_xoffset;
	y += sprite_yoffset;
}