image_speed = -0.35

var up = place_meeting(x, y - 32, obj_solid);
var down = place_meeting(x, y + 32, obj_solid);
if up
{
	if down
		sprite_index = spr_railv;
	else
		sprite_index = spr_railvdown;
}
else if down
	sprite_index = spr_railvup;