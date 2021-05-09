count--;
with instance_create(obj_player1.x, obj_player1.bbox_top - 32, obj_pizzaslice)
{
	vsp = random_range(-3, -9)
	hsp = choose(-3, -2, 2, 3);
	
	if scr_solid(x, y)
		y = obj_player1.y;
}

if count <= 0
	instance_destroy();
else
	alarm[0] = 10;