if myturn
{
	// SAGE2019
	if level == "snickchallenge" 
	{
		global.snickchallenge = true
		global.collect = 10000
	
		with obj_camera
		{
			alarm[1] = 60
			global.seconds = 59
			global.minutes = 9
		}
	}
	if level == "snickrematch"
	{
		global.snickchallenge = true
		global.snickrematch = true
		global.collect = 10000
	
		with obj_camera
		{
			alarm[1] = 60
			global.seconds = 49
			global.minutes = 7
		}
	}
	
	global.wave = 0
	global.maxwave = (global.minutes * 60 + global.seconds) * 60
	
	obj_music.fadeoff = 0
	if global.timeattack
		obj_timeattack.alarm[1] = 60;
}