audio_stop_all();
scr_soundeffect(sfx_pephurt);

show_message("The game crashed! longMessage:\n\npeic is too powerful");
game_end();

/*
with all
{
	if id != other.id
		instance_destroy();
}
room_goto(rm_secret);

alarm[0] = 5;