function scr_player_chainsaw() {
	landAnim = false
	hsp = xscale * movespeed;


	if movespeed > 0
	movespeed -= 0.2


	if floor(image_index) = image_number -1 && spr_player_chainsawswing
	sprite_index = spr_player_chainsawend


	if (sprite_index = spr_player_chainsawend or sprite_index = spr_player_chainsawend) && !key_shoot
	{
	image_index = 0
	state = states.normal
	}

	if scr_solid(x+xscale,y)
	{
	image_index = 0
	instance_create(x+(xscale*10),y+10,obj_bumpeffect)
	hsp = -xscale * 5
	vsp = -3
	state = states.chainsawbump

	}

	if spr_player_chainsawend
	image_speed = 0.5
	else
	image_speed = 0.4


}
