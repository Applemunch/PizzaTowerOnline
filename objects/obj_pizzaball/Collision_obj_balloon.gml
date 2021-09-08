if state == states.golf
    exit;

vsp = -14
kicked = false

with other
{
	instance_create(x, y, obj_balloonpop);
	visible = false;
	x = -9999;
	y = -9999;
	respawn = 100;
}