if sprite_index = spr_pizzaportalend
{
	with obj_player
	{
		visible = true
		sprite_index = spr_pizzaportalentrancestart
		image_index = 0
		room = other.targetRoom
		targetDoor = other.targetDoor
		ds_list_clear(global.baddieroom)
	}
}