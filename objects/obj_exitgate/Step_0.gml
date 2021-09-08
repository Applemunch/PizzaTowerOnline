if global.panic && sprite_index != spr_exitgateclosing_ss
	image_index = 1;
if sprite_index == spr_exitgateclosing_ss && floor(image_index) >= image_number - 1
{
	sprite_index = spr_exitgate_ss
	image_index = 0
	image_speed = 0
}

if obj_player1.character == "S"
{
	visible = false;
	exit;
}
else
	visible = true;

if room == snick_challengeend && global.snickrematch
    audio_sound_pitch(global.music, min(distance_to_object(obj_player1) / (room_width - 480), 1));