if room != characterselect
{
	scr_playerreset();
	room_goto(characterselect);
	exit;
}

con = 0;

audio_stop_sound(global.music);
alarm[0] = 5;
with obj_player
{
	x = -500;
	y = -500;
	doorx = x;
	state = states.titlescreen;
}

playmusic = false;
if !debug
	instance_destroy(obj_wc);

tryconnect = 0;
alpha = 0;