//Move up and down
if selecting = -1
{
if ((obj_player1.key_up2 && obj_player1.key_down2 != obj_player1.key_up2 ) or keyboard_check_pressed(vk_up)) && key_select > -1
{
key_select -= 1
scr_soundeffect(sfx_step)
}
if ((obj_player1.key_down2 && obj_player1.key_up2 != obj_player1.key_down2 )  or keyboard_check_pressed(vk_down))  && key_select < 9
{
key_select += 1
scr_soundeffect(sfx_step)
}

}



//Go back
if (obj_player1.key_jump2 or keyboard_check_pressed(vk_enter)) && selecting = -1 && key_select = -1
{
	scr_soundeffect(sfx_enemyprojectile)
	
	ini_open("saveData.ini");
	ini_write_real("ControlsKeys","up",global.key_up)
	ini_write_real("ControlsKeys","right",global.key_right)
	ini_write_real("ControlsKeys","left",global.key_left)
	ini_write_real("ControlsKeys","down",global.key_down)
	ini_write_real("ControlsKeys","jump",global.key_jump)
	ini_write_real("ControlsKeys","slap",global.key_slap)
	ini_write_real("ControlsKeys","attack",global.key_attack)
	ini_write_real("ControlsKeys","shoot",global.key_shoot)
	ini_write_real("ControlsKeys","taunt",global.key_taunt)
	ini_write_real("ControlsKeys","start",global.key_start)

	ini_close(); 

	if instance_exists(obj_option)
		obj_option.visible = true
	instance_destroy()
}





//UP

if selecting = 0 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_up = keyboard_key;
			selecting = -1
		}
}



if key_select = 0 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_up = -1
}



//DOWN

if selecting = 1 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_down = keyboard_key;
			selecting = -1
		}
}

if key_select = 1 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_down = -1
}



//RIGHT


if selecting = 2 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_right = keyboard_key;
			selecting = -1
		}
}


if key_select = 2 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_right = -1
}

//LEFT

if selecting = 3 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_left = keyboard_key;
			selecting = -1
		}
}

if key_select = 3 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_left = -1
}


//JUMP


if selecting = 4 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_jump = keyboard_key;
			selecting = -1
		}
}

if key_select = 4 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_jump = -1
}
//GRAB


if selecting = 5 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_slap = keyboard_key;
			selecting = -1
		}
}
if key_select = 5 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_slap = -1
}


//DASH

 
if selecting = 6 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_attack = keyboard_key;
			selecting = -1
		}
}

if key_select = 6 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_attack = -1
}


//SHOOT

 
if selecting = 7 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_shoot = keyboard_key;
			selecting = -1
		}
}

if key_select = 7 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_shoot = -1
}

//TAUNT


if selecting = 8 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_taunt = keyboard_key;
			selecting = -1
		}
}

if key_select = 8 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_taunt = -1
}

//START


if selecting = 9 && player = 0
{
			if keyboard_check_pressed(vk_anykey) {
			global.key_start = keyboard_key;
			selecting = -1
		}
}
if key_select = 9 && (obj_player1.key_jump or keyboard_check_pressed(vk_enter)) && selecting = -1 && player = 0
{
	selecting = key_select
	global.key_start = -1
}