scr_soundeffect(sfx_collecttopping)

global.collect += 25

with instance_create(x+16,y,obj_smallnumber)
	number = string(25)

if sprite_index == spr_pizzaslice
	create_collect(x, y, spr_healthpickupeaten)
instance_destroy()