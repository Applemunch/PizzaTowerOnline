/// @description drm
/*
if room > characterselect && (!instance_exists(obj_gms)
or !variable_global_exists("optimize") or !variable_global_exists("logged")
or room_next(rm_load) != Realtitlescreen) && !debug
	room_goto(room_of_dog);
*/