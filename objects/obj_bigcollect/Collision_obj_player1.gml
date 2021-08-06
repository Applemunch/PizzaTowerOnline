if other.state == states.gameover exit;

if obj_player1.character = "V"
	global.playerhealth = clamp(global.playerhealth + 10, 0, 100)

audio_stop_sound(sfx_collectpizza)
scr_soundeffect(sfx_collectpizza)

global.collect += 100
global.heattime = 60

with instance_create(x,y,obj_smallnumber)
	number = string(100)
create_collect(x, y, sprite_index);

instance_destroy()