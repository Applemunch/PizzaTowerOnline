scr_soundeffect(sfx_collectgiantpizza)

global.collect +=  1000

with instance_create(x+16,y,obj_smallnumber)
number = string(1000)

instance_destroy()