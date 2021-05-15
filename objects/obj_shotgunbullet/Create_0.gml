/*
if obj_pause.pause
{
	gms_instance_sync_destroy_silent(id);
	instance_destroy(id, false);
	exit;
}
*/

image_speed = 0.5
image_xscale = obj_player1.xscale

spd = image_xscale * 25
spdh = 0

/*
if check_bysync() == false && global.pvp
	alarm[10] = 1;
if check_bysync() == true && !global.pvp
{
	gms_instance_sync_destroy_silent(id);
	instance_destroy(id, false);
}
sync = check_bysync();

rebound = false;
rmstart = room;
*/