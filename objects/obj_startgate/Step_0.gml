if place_meeting(x,y, obj_player1)
{
	// rematch comuter flicker
	if sprite_index == spr_snickrematchcomputer
		image_index = choose(0, 0, 0, 0, 0, 0, 0, 1);
	else
		image_speed = 0.35
}
else
{
	image_speed = 0
	image_index = 0
}
if sprite_index == spr_exitgate
	image_index = 1

// rematch computer slow down music
if sprite_index == spr_snickrematchcomputer && instance_exists(obj_player)
	audio_sound_pitch(global.music, min(lerp(0.5, 1, floor(distance_to_object(obj_player1)) / 150), 1));

// show level name when player near
if instance_exists(obj_player)
{
	var p = instance_nearest(x, y, obj_player);
	
	if msg != "" && distance_to_object(p) < 50
	&& p.state != states.gameover && p.state != states.victory
	{
		with obj_tv
		{
			message = other.msg
			showtext = true
			alarm[2] = 2
		}
	}
}