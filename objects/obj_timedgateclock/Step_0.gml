if sprite_index == spr_button_goingpressed && floor(image_index) == image_number -1
	sprite_index = spr_button_pressed

if global.timedgatetime <= 0 && sprite_index == spr_button_pressed
	sprite_index = spr_button_goingidle

if sprite_index == spr_button_goingidle && floor(image_index) == image_number -1
	sprite_index = spr_button_idle

if global.panic && global.gameplay == 0
	instance_destroy()