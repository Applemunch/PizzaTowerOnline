/// @description anti cheat
if global.saveslot == "" && !instance_exists(obj_gms) && room != characterselect
	global.saveslot = "1";

if onlinemode != global.onlinemode && !debug
{
	onlinemode = global.onlinemode;
	if room != Realtitlescreen && room != characterselect
		room_goto(room_of_dog);
}

// hub outside barrier
if !global.timeattack && global.modifier == -1
	instance_deactivate_object(inst_4FF95D36);
else
{
	instance_activate_object(inst_4FF95D36);
	if instance_exists(inst_4FF95D36)
	{
		with obj_player while place_meeting(x, y, inst_4FF95D36)
			x++;
	}
}

if global.modifier == mods.no_toppings
	global.failedmod = (global.toppings > 0);
else
	toppingsprite = -1;

if global.modifier == -1
	global.failedmod = false;