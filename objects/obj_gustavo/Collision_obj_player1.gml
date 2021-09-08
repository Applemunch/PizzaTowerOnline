//Kill
if (other.state = states.handstandjump or other.state = states.punch or other.instakillmove = true) && other.character == "N"
{
	with other
		scr_pummel();

	scr_soundeffect(sfx_killenemy);
	if global.gameplay == 0
		scr_sleep(50);
	
	repeat 3
	{
		instance_create(x, y, obj_slapstar);
		create_particle(x, y, particles.baddiegibs);
	}
	instance_create(x, y, obj_bangeffect);

	with instance_create(x,y,obj_sausageman_dead)
		sprite_index = spr_gustavopresentdead;
	instance_destroy();
}

if sprite_index == spr_gustavo_showpizza
{
    sprite_index = spr_gustavo_givepizza;
    image_index = 0;
	
    global.showgnomelist = true;
    global.failcutscene = false;
    global.pizzadelivery = true;
	
    global.hp = 8;
	global.heattime = 60;
	
    state = states.normal;
}