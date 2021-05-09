if global.panic or (global.snickchallenge && global.collect <= 0)
{
	if global.snickrematch
	{
		// sequence
		with instance_create(0, 0, obj_rematchloss)
			instance_deactivate_all(true);
	}
	else
	{
		instance_create(room_width / 2, -100, obj_pizzaface)
		scr_soundeffect(sfx_pizzaface)
		alarm[2] = -1
	}
}
else if global.snickchallenge
{
	if global.collect > 0
	{
		global.collect = max(global.collect - 5, 0);
	    instance_create(obj_player.x, obj_player.y, obj_pizzaloss);
	}
	
	if global.seconds == 0 && global.minutes == 0
		alarm[2] = 3;
}

if global.timedgate
{
	global.timedgate = false
	global.seconds = 30
	ded = false
	alarm[2] = -1
}

if global.miniboss
{
	with obj_player1
	{
		instance_create(x,y,obj_bangeffect)
		repeat(6) instance_create(x,y,obj_slapstar)
		state = states.ejected
		vsp = -10
		audio_stop_all()
		scr_soundeffect(mu_timesup)
		instance_destroy(obj_noisebomb);
	}
	alarm[2] = -1
	global.miniboss = false
}