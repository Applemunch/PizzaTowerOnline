if ds_list_find_index(global.baddieroom, id) == -1 && !important
{
	with instance_create(x, y, obj_pizzaball_slices)
	{
		if global.golfhit < 10
			count = 10;
		else if global.golfhit < 20
			count = 5;
		else if global.golfhit < 30
			count = 1;
		else
			instance_destroy();
	}
	global.golfhit = 0

	ds_list_add(global.baddieroom, id)
	
	repeat 3
	{
		instance_create(x,y,obj_slapstar)
		create_particle(x, y, particles.baddiegibs);
	}

	instance_create(x,y+30,obj_bangeffect)

	with (obj_camera)
	{
	    shake_mag = 5;
	    shake_mag_acc = 20 / room_speed;
	}
}
event_perform(ev_alarm, 4);