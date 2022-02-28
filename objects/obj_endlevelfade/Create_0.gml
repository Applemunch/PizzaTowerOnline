fadealpha = 0
AT = false
HAT = false
fadein = false
depth = -1000;
alarm[0] = 235;

// do the thing
endlevel();

if scr_checkskin(checkskin.p_anton)
{
	scr_soundeffect(mu_antoncomplete);
	alarm[0] = 150;
}
else
{
	// get rank music
	var ranksound = mu_ranka;
	if global.rank == "s"
		ranksound = mu_ranks;
	if global.rank == "b" or global.rank == "c"
		ranksound = mu_rankc;
	if global.rank == "d"
		ranksound = mu_rankd;
	if global.rank == "yousuck"
	{
		ranksound = mu_ranksuck;
		if global.musicgame != 1
			alarm[0] = room_speed * 3.5;
	}
	
	// apply pizza castle
	if global.musicgame == 1
		ranksound = scr_getmidi(ranksound);
	
	// play
	audio_stop_sound(sfx_escaperumble);
	scr_soundeffect(ranksound);
}

with obj_player
{
	doorx = x;
	state = states.door;
	sprite_index = spr_lookdoor;
	image_index = 0;
}
global.panic = false
global.snickchallenge = false

with obj_followcharacter
	if object_index != obj_petfollow instance_destroy();