/// @param skinchoice
function scr_getinput()
{
	var cont = global.cont;
	if ((instance_exists(obj_gms) && global.__chat)
	or (instance_exists(obj_manual) && obj_manual.visible)
	or (instance_exists(obj_wc) && obj_wc.WC_consoleopen)
	or (instance_exists(obj_skinchoice))
	or (instance_exists(obj_hatchoice))
	or (instance_exists(obj_hubelevator) && obj_hubelevator.state == 1))
	&& !(argument_count > 0 && argument[0] == true)
	{
		key_up = false
		key_up2 = false
		key_right = false
		key_right2 = false
		key_left = false
		key_left2 = false
		key_down = false
		key_down2 = false
		key_jump = false
		key_jump2 = false
		key_slap = false
		key_slap2 = false
		key_taunt = false
		key_taunt2 =  false
		key_attack = false
		key_attack2 = false
		key_shoot = false
		key_shoot2 = false
		key_start = false
		key_escape = false
		
		stickpressed = true;
		exit;
	}
	
	if !variable_instance_exists(id, "stickpressed")
		stickpressed = true;
	
	var deadzone = 0.4
	gamepad_set_axis_deadzone(cont,deadzone)
	key_up = (keyboard_check(global.key_up)) or gamepad_button_check(cont, global.key_upC) or gamepad_axis_value(cont, gp_axislv) < 0
	key_up2 = (keyboard_check_pressed(global.key_up) or gamepad_button_check_pressed(cont, global.key_upC) or (gamepad_axis_value(cont, gp_axislv) < -deadzone && stickpressed == false))
	key_right = (keyboard_check(global.key_right)) or gamepad_button_check(cont, global.key_rightC)  or gamepad_axis_value(cont, gp_axislh) > 0
	key_right2 = (keyboard_check_pressed(global.key_right) or gamepad_button_check_pressed(cont, global.key_rightC) or (gamepad_axis_value(cont, gp_axislh) > deadzone && stickpressed == false))
	key_left = -(keyboard_check(global.key_left) or gamepad_button_check(cont, global.key_leftC) or gamepad_axis_value(cont, gp_axislh) < 0)  
	key_left2 = -(keyboard_check_pressed(global.key_left) or gamepad_button_check_pressed(cont, global.key_leftC) or (gamepad_axis_value(cont, gp_axislh) < -deadzone && stickpressed == false))
	key_down = (keyboard_check(global.key_down)) or gamepad_button_check(cont, global.key_downC) or gamepad_axis_value(cont, gp_axislv) > 0
	key_down2 = (keyboard_check_pressed(global.key_down)) or gamepad_button_check_pressed(cont, global.key_downC) or (gamepad_axis_value(cont, gp_axislv) > deadzone && stickpressed == false)
	key_jump = (keyboard_check_pressed(global.key_jump)) or gamepad_button_check_pressed(cont, global.key_jumpC) 
	key_jump2 = (keyboard_check(global.key_jump)) or gamepad_button_check(cont, global.key_jumpC)
	key_slap = (keyboard_check(global.key_slap)) or gamepad_button_check(cont, global.key_slapC) 
	key_slap2 = (keyboard_check_pressed(global.key_slap)) or gamepad_button_check_pressed(cont, global.key_slapC)
	key_taunt = (keyboard_check(global.key_taunt)) or gamepad_button_check(cont, global.key_tauntC) 
	key_taunt2 =  (keyboard_check_pressed(global.key_taunt)) or gamepad_button_check_pressed(cont, global.key_tauntC)
	key_attack = (keyboard_check(global.key_attack)) or gamepad_button_check(cont, global.key_attackC) or gamepad_button_check(cont, gp_shoulderrb)
	key_attack2 = (keyboard_check_pressed(global.key_attack)) or gamepad_button_check_pressed(cont, global.key_attackC)  or gamepad_button_check_pressed(cont, gp_shoulderrb)
	key_shoot = (keyboard_check(global.key_shoot)) or gamepad_button_check(cont, global.key_shootC) 
	key_shoot2 = (keyboard_check_pressed(global.key_shoot)) or gamepad_button_check_pressed(cont, global.key_shootC) 
	key_start = (keyboard_check_pressed(global.key_start)) or gamepad_button_check_pressed(cont, global.key_startC) 
	key_escape = (keyboard_check_pressed(vk_escape)) or gamepad_button_check(cont, gp_select)
	
	if (gamepad_axis_value(cont, gp_axislh) > deadzone or gamepad_axis_value(cont, gp_axislh) < -deadzone)
	or (gamepad_axis_value(cont, gp_axislv) > deadzone or gamepad_axis_value(cont, gp_axislv) < -deadzone)
		stickpressed = true
	else
		stickpressed = false
}