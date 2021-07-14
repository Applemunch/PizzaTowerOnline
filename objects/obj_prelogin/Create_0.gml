con = 0;

audio_stop_sound(global.music);
alarm[0] = 5;
with obj_player1
	state = states.titlescreen;

playmusic = false;
if !debug
	instance_destroy(obj_wc);

tryconnect = 0;
alpha = 0;