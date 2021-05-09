if global.panic = true
	image_index = 1

if obj_player1.character == "S"
{
	visible = false;
	exit;
}
else
	visible = true;

if room == snick_challengeend && global.snickrematch
    audio_sound_pitch(global.music, min(distance_to_object(obj_player1) / (room_width - 480), 1));