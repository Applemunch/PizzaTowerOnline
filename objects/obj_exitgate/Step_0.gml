if global.panic && sprite_index != spr_exitgateclosing_ss
	image_index = 1;
if sprite_index == spr_exitgateclosing_ss && floor(image_index) >= image_number - 1
{
	sprite_index = spr_exitgate_ss;
	image_index = 0;
	image_speed = 0;
}

// disable if youre snick
var snick = false;
with obj_player1
	if character == "S" snick = true;

visible = !snick;
if snick
	exit;

// snick rematch end slowdown
if room == snick_challengeend && global.snickrematch
    audio_sound_pitch(global.music, min(distance_to_object(obj_player1) / (room_width - 480), 1));