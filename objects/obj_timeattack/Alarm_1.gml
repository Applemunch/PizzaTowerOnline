if global.timeattack
{
	var paused = false;
	if instance_exists(obj_pause)
		paused = obj_pause.pause;
	
	if !stop && !paused
	{
		global.taseconds += 1;
		while global.taseconds >= 60
		{
			global.taseconds -= 60;
			global.taminutes += 1;
		}
	}
	alarm[1] = 60;
}
