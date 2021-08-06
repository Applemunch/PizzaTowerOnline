if other.state == states.gameover exit;

if obj_player1.character = "V" 
	global.playerhealth = clamp(global.playerhealth + 100, 0, 100)

audio_stop_sound(sfx_collectgiantpizza)
scr_soundeffect(sfx_collectgiantpizza)

global.collect += 1000
global.heattime = 60

with instance_create(x,y,obj_smallnumber)
	number = string(1000)

if global.bullet < 3
    global.bullet += 1;

event_user(0)
instance_destroy()