image_speed = 0

randomize()
image_blend = choose(make_colour_rgb(96, 208, 72), make_colour_rgb(248, 0, 0))

alarm[1] = 3
alarm[0] = 15

if global.surfacemach
	surf = surface_create(room_width, room_height);

parent = noone;