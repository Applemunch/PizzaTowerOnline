hp = 2

if obj_player1.character = "N"
	sprite_index = spr_halloweenbigblock
if obj_player1.character = "SP"
	sprite_index = spr_destroyable2big_ss

if string_startswith(room_get_name(room), "strongcold")
	sprite_index = spr_xmasbigblock

depth = 1
content = obj_null