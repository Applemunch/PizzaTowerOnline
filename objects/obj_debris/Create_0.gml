image_index = random_range(0,4);
image_speed = 0;

vsp = random_range(-4, 0);
hsp = random_range(-4, 4);
if global.gameplay != 0
{
	hsp = random_range(-5, 5);
	vsp = random_range(-7, -3);
}

grav = 0.4;
hsp2 = 0;
image_angle = irandom_range(0, 360);

depth = -1;
