scr_soundeffect(sfx_collecttopping)

global.collect += 25

with instance_create(x+16,y,obj_smallnumber)
	number = string(25)

instance_destroy()