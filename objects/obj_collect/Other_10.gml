/// @description collect
global.collect += 10;
with instance_create(x + 16, y, obj_smallnumber)
	number = string(10);

scr_soundeffect(sfx_collecttopping);
create_collect(x, y, sprite_index);
	
instance_destroy();
scr_failmod(mods.no_toppings);