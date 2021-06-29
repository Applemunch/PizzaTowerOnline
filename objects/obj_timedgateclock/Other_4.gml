if global.timedgatetime > 0
	sprite_index = spr_button_pressed
if global.panic && global.gameplay == 0
	instance_destroy()

time = time_max