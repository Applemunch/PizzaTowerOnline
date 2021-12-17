var player = other;
with player
{
	if place_meeting(x, y, other) && key_up && grounded && (state == states.normal or state == states.mach1 or state == states.mach2) 
	&& !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.victory && state != states.comingoutdoor
	&& spotlight = true
	{
		if !scr_checkskin(checkskin.p_anton)
		or (other.level == "snickchallenge" or other.level == "snickrematch" or other.level == "grinch")
			audio_stop_all()
		
		backtohubstartx = x
		backtohubstarty = y
		backtohubroom = room
		mach2 = 0
		obj_camera.chargecamera = 0;
		obj_camera.crouchcamera = 0;
		image_index = 0
		state = states.victory
		
		doorx = other.x;
		if other.short
			sprite_index = spr_lookdoor
		else
			sprite_index = spr_entergate
		
		global.collect = 0;
		global.bullet = 3;
	}
}

if floor(player.image_index) >= player.image_number - 1 && player.state == states.victory
{
	myturn = true;
	with player
	{
		targetDoor = other.targetDoor
		targetRoom = other.targetRoom
		
		global.pizzacoinstart = global.pizzacoin
		
		if !instance_exists(obj_fadeout)
			instance_create(x,y,obj_fadeout)
	}
}