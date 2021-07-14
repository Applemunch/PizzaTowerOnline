/// @description saveslot invalid
if global.saveslot == "" && !(instance_exists(obj_gms) && gms_info_isloggedin())
	global.saveslot = "1";