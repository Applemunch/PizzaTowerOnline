global.snickchallenge = false;
global.snickrematch = false;

global.pizzacoin = global.pizzacoinstart;

audio_stop_all();
audio_play_sound(sfx_pephurt, 0, false);
audio_play_sound(sfx_rematchepicfail, 0, false);
alarm[0] = room_speed * 6;

depth = -50000;