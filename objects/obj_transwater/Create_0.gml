depth = -10;
image_speed = 0.35;
image_alpha = 0.4;
col = $F8A830;

if check_sugary()
{
	sprite_index = spr_sswater;
	col = $F7A830;
}
else
	sprite_index = spr_water;
