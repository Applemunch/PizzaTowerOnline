if other.state == states.gameover exit;


if obj_player1.character = "V"
	global.playerhealth = clamp(global.playerhealth + 10, 0, 100)

scr_soundeffect(sfx_collectpizza)

global.collect += 100
global.heattime = 60

with instance_create(x+16,y,obj_smallnumber)
	number = string(100)
create_collect(x, y, sprite_index);

instance_destroy()