if !grounded
{
	image_index = 0;
    if place_meeting(x + hsp, y, obj_solid) && !place_meeting(x, y, obj_solid)
        hsp *= -1;
}
else
{
	image_speed = 0.35;
    hsp = 0;
    vsp = 0;
}
scr_collide();