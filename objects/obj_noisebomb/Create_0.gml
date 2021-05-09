event_inherited();
spr_intro = spr_noisebomb_intro;
spr_idle = spr_noisebomb;
spr_run = spr_noisebomb_walk;
spr_panic = spr_noisebomb_idle;
spr_intro_strongcold = spr_noisebomb_intro;
spr_idle_strongcold = spr_noisebomb;
spr_run_strongcold = spr_noisebomb_walk;
yoffset = 0;

with obj_player1
{
	state = states.backbreaker
	sprite_index = spr_bossintro
	image_index = 0
	scr_soundeffect(snd_fireass)
}

sprite_index = spr_intro
instance_create(x, y, obj_taunteffect)