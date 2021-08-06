audio_stop_sound(sfx_collectgiantpizza)
scr_soundeffect(sfx_collectgiantpizza)

global.collect += 1000

with instance_create(x,y,obj_smallnumber)
	number = string(1000)

if global.bullet < 3
    global.bullet += 1;

event_user(0)
instance_destroy()