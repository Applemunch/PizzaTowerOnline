/// @description sync
/*
if !(instance_exists(obj_gms) && gms_info_isloggedin())
	exit;

if check_bysync() == false && !sync && instance_number(object_index) < 100
{
	gms_instance_sync_var_add("xscale", image_xscale);
	gms_instance_sync_var_add("movespeed", movespeed);
	gms_instance_sync(id, is_full | isc_local);
}