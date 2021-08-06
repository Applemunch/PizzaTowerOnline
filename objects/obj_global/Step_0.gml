/// @description anti cheat
if global.saveslot == "" && !instance_exists(obj_gms) && room != characterselect
	global.saveslot = "1";

if onlinemode != global.onlinemode && !debug
{
	onlinemode = global.onlinemode;
	if room != Realtitlescreen && room != characterselect
		room_goto(room_of_dog);
}