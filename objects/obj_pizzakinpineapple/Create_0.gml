event_inherited();
if global.gameplay == 0
{
	spr_intro = spr_toppinpineapple_intro;
	spr_idle = spr_toppinpineapple;
	spr_run = spr_toppinpineapple_run;
	spr_panic = spr_toppinpineapple_panic;
	spr_panicidle = spr_toppinpineapple_panicidle;
}
else
{
	spr_intro = spr_toppinpineapple_intro_NEW;
	spr_idle = spr_toppinpineapple_NEW;
	spr_run = spr_toppinpineapple_run_NEW;
	spr_panic = spr_toppinpineapple_run_NEW;
	spr_panicidle = spr_toppinpineapple_panic_NEW;
	yoffset = 0;
}
spr_intro_strongcold = spr_xmaspineappletoppin_intro;
spr_idle_strongcold = spr_xmaspineappletoppin_idle;
spr_run_strongcold = spr_xmaspineappletoppin_walk;
spr_panic_strongcold = spr_xmaspineappletoppin_panic;
spr_panicidle_strongcold = spr_xmaspineappletoppin_panicidle;