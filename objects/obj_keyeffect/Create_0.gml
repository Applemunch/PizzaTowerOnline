image_speed = 0.35

if !(instance_exists(obj_gms) && gms_info_isloggedin())
	exit;

if check_bysync() == false
	gms_instance_sync(id, is_onetime | isc_local);