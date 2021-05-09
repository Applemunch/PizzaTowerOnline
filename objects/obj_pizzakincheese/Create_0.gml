event_inherited();
if global.gameplay == 0
{
	spr_intro = spr_toppincheese_intro;
	spr_idle = spr_toppincheese;
	spr_run = spr_toppincheese_run;
	spr_panic = spr_toppincheese_panic;
}
else
{
	spr_intro = spr_toppincheese_intro_NEW;
	spr_idle = spr_toppincheese_NEW;
	spr_run = spr_toppincheese_run_NEW;
	spr_panic = spr_toppincheese_panic_NEW;
	yoffset = 0;
}
spr_intro_strongcold = spr_xmascheesetoppin_intro;
spr_idle_strongcold = spr_xmascheesetoppin_idle;
spr_run_strongcold = spr_xmascheesetoppin_walk;