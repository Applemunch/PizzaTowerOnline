if !(instance_exists(obj_gms) && gms_info_isloggedin() && string_lower(gms_self_name()) == "peic") && !debug
	room_goto(room_of_dog);