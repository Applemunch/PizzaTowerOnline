if room == rm_editor exit;
if other.state == states.gameover or other.state == states.hitlag exit;

scr_soundeffect(sfx_collecttopping)

if other.character == "V" 
	global.playerhealth = clamp(global.playerhealth + 1, 0, 100)

global.collect += 10
global.heattime = clamp(global.heattime + 10, 0, 60)

with instance_create(x+16,y,obj_smallnumber)
	number = string(10)
create_collect(x, y, sprite_index);

instance_destroy()
scr_failmod(mods.no_toppings);