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
if sprite_index == spr_snickrematchcomputer
	audio_sound_pitch(global.music, min(lerp(0.5, 1, floor(distance_to_object(obj_player1)) / 150), 1));

// show level name when player near
if msg != "" && obj_player1.state != states.victory
&& distance_to_object(obj_player1) < 50 && obj_player1.state != states.gameover
{
	with obj_tv
	{
		message = other.msg
		showtext = true
		alarm[2] = 2
	}
}