if grounded && other.sprite_index == spr_swordstone && (((state = states.handstandjump or state == states.punch) && character != "S") or (character == "S" && key_slap2))
{
	scr_soundeffect(sfx_knightsword)
	global.SAGEknighttaken = true
	momentum = false
	movespeed = 0
	other.image_index =1
	image_index = 0
	image_speed = 0.35
	sprite_index = spr_knightpepstart
	state = states.knightpep
	hsp = 0
	if global.gameplay != 0
		vsp = 0
	
	tv_push_prompt_once(tv_create_prompt("This is the knight transformation text", 2, spr_tv_knight, 3), "knight");
}