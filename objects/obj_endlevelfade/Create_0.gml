fadealpha = 0
AT = false
HAT = false
fadein = false
depth = -1000;

if scr_checkskin(checkskin.p_anton)
	obj_endlevelfade.alarm[0] = 150
else
	obj_endlevelfade.alarm[0] = 235

// do the thing
endlevel();

if scr_checkskin(checkskin.p_anton)
	scr_soundeffect(mu_antoncomplete);
else
{
	if global.musicgame == 0
	{
		if global.rank = "s"
			scr_soundeffect(mu_ranks)
		if global.rank = "a"
			scr_soundeffect(mu_ranka)
		if global.rank = "b"
			scr_soundeffect(mu_rankc)
		if global.rank = "c"
			scr_soundeffect(mu_rankc)
		if global.rank = "d"
			scr_soundeffect(mu_rankd)
		if global.rank == "yousuck"
			scr_soundeffect(mu_ranksuck)
	}
	else if global.musicgame == 1
	{
		if global.rank = "s"
			scr_soundeffect(mu_ranks_pc)
		if global.rank = "a"
			scr_soundeffect(mu_ranka_pc)
		if global.rank = "b"
			scr_soundeffect(mu_rankc_pc)
		if global.rank = "c"
			scr_soundeffect(mu_rankc_pc)
		if global.rank == "d" or global.rank == "yousuck"
			scr_soundeffect(mu_rankd_pc)
	}
}

obj_player1.doorx = obj_player1.x
obj_player1.state = states.door
obj_player1.sprite_index = obj_player1.spr_lookdoor
obj_player1.image_index = 0
global.panic = false
global.snickchallenge = false

instance_destroy(obj_followcharacter);