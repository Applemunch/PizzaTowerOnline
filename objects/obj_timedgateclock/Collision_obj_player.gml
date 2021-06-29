/*
if !(global.timedgate && !replace)
{
	global.timedgate = true
	global.minutes = minutes
	global.seconds = seconds
	obj_camera.alarm[1] = 60
	
	with obj_timedgateclock
	{
		if sprite_index != spr_button_pressed
			sprite_index = spr_button_goingpressed
	}
}
*/

with obj_timedgateclock
{
	if sprite_index != spr_button_pressed
		sprite_index = spr_button_goingpressed
}
global.timedgatetime = time;
global.timedgatetime += seconds * room_speed;
global.timedgatetime += minutes * room_speed * room_speed;