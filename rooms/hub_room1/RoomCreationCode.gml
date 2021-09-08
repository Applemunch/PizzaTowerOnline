if instance_exists(obj_gms) && gms_info_isloggedin()
{
	var p = gms_other_count();
	global.roommessage = string(p) + (p == 1 ? " PLAYER ONLINE" : " PLAYERS ONLINE");
}
else
	global.roommessage = "FLOOR 1";

global.golfhit = 0;