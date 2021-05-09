event_inherited();
if global.gameplay == 0
{
	spr_intro = spr_toppinshroom_intro;
	spr_idle = spr_toppinshroom;
	spr_run = spr_toppinshroom_run;
	spr_panic = spr_toppinshroom_panic;
}
else
{
	spr_intro = spr_toppinshroom_intro_NEW;
	spr_idle = spr_toppinshroom_NEW;
	spr_run = spr_toppinshroom_run_NEW;
	spr_panic = spr_toppinshroom_panic_NEW;
	yoffset = 0;
}
spr_intro_strongcold = spr_xmasshroomtoppin_intro;
spr_idle_strongcold = spr_xmasshroomtoppin_idle;
spr_run_strongcold = spr_xmasshroomtoppin_walk;