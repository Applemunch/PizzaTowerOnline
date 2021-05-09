if room == rm_editor exit;
if other.state == states.gameover exit;

scr_soundeffect(sfx_collecttopping)

if obj_player1.character = "V" 
	global.playerhealth = clamp(global.playerhealth+1, 0, 100)
with obj_camera
	healthshaketime = 30

global.collect += 10
global.heattime = clamp(global.heattime + 10, 0, 60)

with instance_create(x+16,y,obj_smallnumber)
	number = string(10)
create_collect(x, y, sprite_index);

instance_destroy()