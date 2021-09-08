image_speed = 0.35
targetDoor = "A"
enter = false;
index = 0;

if obj_player1.character == "N"
	sprite_index = spr_boxofpizzaN
if obj_player1.character == "SP"
{
	sprite_index = spr_boxofpizzaSP
	mask_index = sprite_index
}

//layer_get_id("Backgrounds_1")