if sprite_index == spr_noiseselected && floor(image_index) == image_number- 1
	image_speed = 0

if t < 1
{
	t = lerp(t, 1, 0.25);
	x = lerp(room_width, xstart, t);
}