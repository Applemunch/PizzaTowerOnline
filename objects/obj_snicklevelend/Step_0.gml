if !hit && (obj_player1.character != "S" or (!global.panic && room != snick_challengeend))
{
	visible = false;
	exit;
}
else
	visible = true;

if floor(image_index) = image_number -1 && obj_player1.state != states.door && obj_player1.grounded
{
	with (obj_player1)
	{
		state = states.door
		doorx = x;
		sprite_index = spr_snick_victory
		image_index = 0
	}
	alarm[0] = 200
}

if floor(image_index) = image_number -1
	image_speed = 0

if room == snick_challengeend && global.snickrematch
    audio_sound_pitch(global.music, min(distance_to_object(obj_player1) / (room_width - 480), 1));

if hit
{
	with obj_camera
	{
		targetoverride = other.id;
		targetgoingback = true;
	}
	obj_player1.x = clamp(obj_player1.x, __view_get(e__VW.XView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0));
}