if place_meeting(x, y + 8, obj_player1) && obj_player1.vsp < 0 && scr_getcoin() >= price && image_speed == 0
{
	scr_soundeffect(sfx_buyweapon)
	global.pizzacoin -= price
	image_speed = 0.35
	
	// SAGE2019
	/*
	if global.snickchallenge
		global.SAGEshotgunsnicknumber += 1
	*/
}
if price != 4
	sprite_index = spr_weaponmachine_re;