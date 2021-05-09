

if (instance_exists(obj_gms) && gms_info_isloggedin())
&& gms_other_count() > 0
	global.roommessage = "EATING A BIG PIZZA TOGETHER";
else
	global.roommessage = "EATING A BIG PIZZA ALONE";