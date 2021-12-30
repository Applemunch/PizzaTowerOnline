/// @description snick and timeattack and etc
if myturn
{
	global.style = 0;
	global.stylethreshold = 0;
	global.collect = 0;
	global.bullet = 3;
	
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
	if level == "medieval_re" or level == "ruin_re" or level == "dungeon_re"
		global.snickrematch = true;
	
	global.wave = 0
	global.maxwave = (global.minutes * 60 + global.seconds) * 60
	
	with obj_music
		fadeoff = 0
	if global.timeattack with obj_timeattack
		alarm[1] = 60;
}