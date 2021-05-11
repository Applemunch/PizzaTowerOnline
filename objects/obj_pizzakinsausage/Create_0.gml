event_inherited();
if global.gameplay == 0
{
	spr_intro = spr_toppinsausage_intro;
	spr_idle = spr_toppinsausage;
	spr_run = spr_toppinsausage_run;
	spr_panic = spr_toppinsausage_panic;
	spr_panicidle = spr_toppinsausage_panicidle;
}
else
{
	spr_intro = spr_toppinsausage_intro_NEW;
	spr_idle = spr_toppinsausage_NEW;
	spr_run = spr_toppinsausage_run_NEW;
	spr_panic = spr_toppinsausage_panic_NEW;
	spr_panicidle = spr_toppinsausage_NEW;
	yoffset = 0;
}
spr_intro_strongcold = spr_xmassausagetoppin_intro;
spr_idle_strongcold = spr_xmassausagetoppin_idle;
spr_run_strongcold = spr_xmassausagetoppin_walk;
spr_panic_strongcold = spr_xmassausagetoppin_panicidle;
spr_panicidle_strongcold = spr_xmassausagetoppin_panicidle;