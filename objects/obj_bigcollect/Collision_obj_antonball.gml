audio_stop_sound(sfx_collectpizza)
scr_soundeffect(sfx_collectpizza)

global.collect += 100

with instance_create(x+16,y,obj_smallnumber)
	number = string(100)
create_collect(x, y, sprite_index);

instance_destroy()
scr_failmod(mods.no_toppings);