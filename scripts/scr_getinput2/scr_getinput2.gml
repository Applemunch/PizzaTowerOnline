function scr_getinput2() {

	gamepad_set_axis_deadzone(1,0.4)
	key_up = (keyboard_check(global.key_upN)) or gamepad_button_check(1, global.key_upCN) or gamepad_axis_value(1, gp_axislv) < 0
	key_up2 = (keyboard_check_pressed(global.key_upN)) or gamepad_button_check_pressed(1, global.key_upCN)  or (gamepad_axis_value(1, gp_axislv) < -0.5 && stickpressed = false)
	key_right = (keyboard_check(global.key_rightN)) or gamepad_button_check(1, global.key_rightCN)  or gamepad_axis_value(1, gp_axislh) > 0
	key_right2 = (keyboard_check_pressed(global.key_rightN)) or gamepad_button_check_pressed(1, global.key_rightCN) or (gamepad_axis_value(1, gp_axislh) > 0.5 && stickpressed = false)
	key_left = -(keyboard_check(global.key_leftN) or gamepad_button_check(1, global.key_leftCN) or gamepad_axis_value(1, gp_axislh) < 0)  
	key_left2 = -(keyboard_check_pressed(global.key_leftN) or gamepad_button_check_pressed(1, global.key_leftCN) or (gamepad_axis_value(1, gp_axislh) < -0.5 && stickpressed = false))
	key_down = (keyboard_check(global.key_downN)) or gamepad_button_check(1, global.key_downCN) or gamepad_axis_value(1, gp_axislv) > 0
	key_down2 = (keyboard_check_pressed(global.key_downN)) or gamepad_button_check_pressed(1, global.key_downCN) or (gamepad_axis_value(1, gp_axislv) > 0.5 && stickpressed = false)
	key_jump = (keyboard_check_pressed(global.key_jumpN)) or gamepad_button_check_pressed(1, global.key_jumpCN) 
	key_jump2 = (keyboard_check(global.key_jumpN)) or gamepad_button_check(1, global.key_jumpCN)
	key_slap = (keyboard_check(global.key_slapN)) or gamepad_button_check(1, global.key_slapCN) 
	key_slap2 = (keyboard_check_pressed(global.key_slapN)) or gamepad_button_check_pressed(1, global.key_slapCN)
	key_taunt = (keyboard_check(global.key_tauntN)) or gamepad_button_check(1, global.key_tauntCN) 
	key_taunt2 =  (keyboard_check_pressed(global.key_tauntN)) or gamepad_button_check_pressed(1, global.key_tauntCN)
	key_attack = (keyboard_check(global.key_attackN)) or gamepad_button_check(1, global.key_attackCN) or gamepad_button_check(1, gp_face2) or gamepad_button_check(1, gp_shoulderrb)
	key_attack2 = (keyboard_check_pressed(global.key_attackN)) or gamepad_button_check_pressed(1, global.key_attackCN) or gamepad_button_check_pressed(1, gp_face2) or gamepad_button_check_pressed(1, gp_shoulderrb)
	key_shoot = (keyboard_check(global.key_shootN)) or gamepad_button_check(1, global.key_shootCN) 
	key_shoot2 = (keyboard_check_pressed(global.key_shootN)) or gamepad_button_check_pressed(1, global.key_shootCN) 
	key_start = (keyboard_check_pressed(global.key_startN)) or gamepad_button_check_pressed(1, global.key_startCN) 
	key_escape = (keyboard_check_pressed(vk_escape)) or gamepad_button_check(1, gp_select) 



	if (gamepad_axis_value(1, gp_axislh) > 0.5 or gamepad_axis_value(1, gp_axislh) < -0.5)
	or (gamepad_axis_value(1, gp_axislv) > 0.5 or gamepad_axis_value(1, gp_axislv) < -0.5)
	{
	stickpressed = true
	}
	else
	stickpressed =false



}
