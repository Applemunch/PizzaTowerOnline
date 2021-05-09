if image_alpha < 1
image_alpha += 0.005

if image_alpha = 1 && obj_player1.key_jump2
{
	scr_soundeffect(sfx_collectpizza)

	scr_playerreset()

	obj_player.state = states.titlescreen

	obj_player1.targetDoor = "A"
	room = Realtitlescreen	
}

if  image_alpha = 1
with obj_tv
{
	message = "MERRY XMAS BREAK!!"
	showtext = true
	alarm[0] = 2
}