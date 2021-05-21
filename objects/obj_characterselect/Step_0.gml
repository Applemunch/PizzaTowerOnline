

image_speed = 0.35

/*
if  (obj_player1.key_right2 or -obj_player2.key_left2) && selected = 0 && ready = false
{
selected += 1
	scr_soundeffect(sfx_step)
}

if (-obj_player1.key_left2 or obj_player2.key_right2) && selected = 1 && ready = false
{
selected -= 1
	scr_soundeffect(sfx_step)
}
*/

if (obj_player1.key_jump) && selected = 0 && obj_peppinoselect.sprite_index != spr_peppinoselected
{
	ready = true
	scr_soundeffect(sfx_collecttoppin)
	obj_peppinoselect.sprite_index = spr_peppinoselected
	obj_peppinoselect.image_index = 0
	with obj_player1
	{
	character = "P"
	scr_characterspr()
	}
	
	alarm[0] = 100
}

if  (obj_player1.key_jump) && selected = 1 && obj_noiseselect.sprite_index != spr_noiseselected
{
	ready = true
		scr_soundeffect(sfx_collecttoppin)
	obj_noiseselect.sprite_index = spr_noiseselected
	obj_noiseselect.image_index = 0
	with obj_player1
	{
	character = "N"
	scr_characterspr()
	}
	
	alarm[0] = 100
} 