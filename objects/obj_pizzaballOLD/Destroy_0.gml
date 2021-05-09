if ds_list_find_index(global.baddieroom, id) == -1 && important = false
{
	with instance_create(x, y, obj_pizzaball_slices)
	{
		if global.golfhit < 10
			count = 10;
		else if global.golfhit < 20
			count = 5;
		else
			count = 1;
	}
	global.golfhit = 0

	ds_list_add(global.baddieroom, id) 

	scr_soundeffect(sfx_killenemy)
	
	if global.gameplay == 0
		scr_sleep(50)
	
	instance_create(x,y,obj_slapstar)
	instance_create(x,y,obj_slapstar)
	instance_create(x,y,obj_slapstar)
	instance_create(x,y,obj_baddiegibs)
	instance_create(x,y,obj_baddiegibs)
	instance_create(x,y,obj_baddiegibs)
	with (obj_camera) {

	    shake_mag=3;
	    shake_mag_acc=3/room_speed;
	}

	instance_create(x,y+30,obj_bangeffect)



	    with (obj_camera) {

	    shake_mag=5;
	    shake_mag_acc=20/room_speed;
	}
	
	hsp = 0
	vsp = 0
}

event_perform(ev_alarm, 4);