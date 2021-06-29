image_speed = 0.35
depth= 104

targetDoor = "A"

//layer_get_id("Backgrounds_1")

if obj_player1.character == "N"
	sprite_index = spr_boxofpizzaN
if obj_player1.character == "SP" && !global.streamer
	sprite_index = spr_boxofpizzaSP

if string_startswith(room_get_name(room), "strongcold")
	sprite_index = spr_xmaspizzaboxdown
if global.snickrematch
	sprite_index = spr_boxofpizza_re