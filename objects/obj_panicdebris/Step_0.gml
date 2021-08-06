//Panic debris
if global.panic && alarm[0] == -1
    alarm[0] = 5;

if !global.panic
	alarm[0] = -1;

if flasha > 0
	flasha -= 0.075;

/*
if global.panic && audio_is_playing(mu_war)
{
	var t = 60 / 136;
	var pos = audio_sound_get_track_position(global.music);
	if pos < beatsec
	{
		beatsec = pos;
		beats = 0;
	}
	
	if pos >= beatsec + t
	{
		beatsec = pos;
		with obj_camera
			zoom = 1.05;
	}
	
	with obj_camera
		zoom = lerp(zoom, 1, 0.25);
}
*/