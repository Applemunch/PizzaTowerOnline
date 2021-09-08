if other.state == states.gameover or other.state == states.hitlag exit;

if obj_player1.character == "V" 
	global.playerhealth = clamp(global.playerhealth + 5, 0, 100)

global.collect += 25

with instance_create(x, y, obj_smallnumber)
	number = string(25)
scr_soundeffect(sfx_collecttopping)

if sprite_index == spr_pizzaslice
	create_collect(x, y, spr_healthpickupeaten)
global.heattime = clamp(global.heattime + 25, 0, 60)

instance_destroy()
scr_failmod(mods.no_toppings);