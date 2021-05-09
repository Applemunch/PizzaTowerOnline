function scr_initinput()
{
	ini_open("saveData.ini");

	global.key_up = ini_read_real("ControlsKeys","up",vk_up)  
	global.key_right = ini_read_real("ControlsKeys","right",vk_right)
	global.key_left = ini_read_real("ControlsKeys","left",vk_left)
	global.key_down = ini_read_real("ControlsKeys","down",vk_down)
	global.key_jump = ini_read_real("ControlsKeys","jump",ord("Z"))
	global.key_slap = ini_read_real("ControlsKeys","slap",ord("X"))
	global.key_taunt = ini_read_real("ControlsKeys","taunt",ord("C"))
	global.key_shoot = ini_read_real("ControlsKeys","shoot",ord("A"))
	global.key_attack = ini_read_real("ControlsKeys","attack",vk_shift)
	global.key_start = ini_read_real("ControlsKeys","start",vk_escape)


	global.key_upC = ini_read_real("ControllerButton", "up", gp_padu)
	global.key_rightC = ini_read_real("ControllerButton","right",gp_padr)
	global.key_leftC = ini_read_real("ControllerButton","left",gp_padl)
	global.key_downC = ini_read_real("ControllerButton","down",gp_padd)
	global.key_jumpC = ini_read_real("ControllerButton","jump",gp_face1)
	global.key_slapC = ini_read_real("ControllerButton","slap",gp_face3)
	global.key_tauntC = ini_read_real("ControllerButton","taunt",gp_face4)
	global.key_shootC = ini_read_real("ControllerButton","shoot",gp_face2)
	global.key_attackC = ini_read_real("ControllerButton","attack",gp_shoulderr)
	global.key_startC = ini_read_real("ControllerButton","start",gp_start)

	ini_close();
}