event_inherited();
if global.gameplay == 0
{
	spr_intro = spr_toppintomato_intro;
	spr_idle = spr_toppintomato;
	spr_run = spr_toppintomato_run;
	spr_panic = spr_toppintomato_panic;
}
else
{
	spr_intro = spr_toppintomato_intro_NEW;
	spr_idle = spr_toppintomato_NEW;
	spr_run = spr_toppintomato_run_NEW;
	spr_panic = spr_toppintomato_panic_NEW;
	yoffset = 0;
}
spr_intro_strongcold = spr_xmastomatotoppin_intro;
spr_idle_strongcold = spr_xmastomatotoppin_idle;
spr_run_strongcold = spr_xmastomatotoppin_walk;