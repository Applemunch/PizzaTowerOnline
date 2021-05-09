image_speed = 0.5
hsp = 0
vsp = random_range(-2,-4)
grav = 0.5

if obj_player1.character = "N"
	sprite_index = spr_halloweenspinningpizza
if obj_player1.character = "S"
	sprite_index = spr_snickcollectible2
if obj_player1.character = "SP"
	sprite_index = spr_pizzaslice_ss

if string_startswith(room_get_name(room), "strongcold")
	sprite_index = spr_xmasspinningslice;

if global.snickrematch
	sprite_index = spr_pizzaslice_re