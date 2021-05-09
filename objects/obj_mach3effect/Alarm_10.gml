/// @description sync
if !(instance_exists(obj_gms) && gms_info_isloggedin())
	exit;

if check_bysync() == false && sync == false && instance_number(object_index) < 100
{
	gms_instance_sync_var_add("spr", sprite_index);
	gms_instance_sync_var_add("img", image_index);
	gms_instance_sync_var_add("xscale", image_xscale);
	gms_instance_sync_var_add("spr_palette", spr_palette);
	gms_instance_sync_var_add("paletteselect", paletteselect);
	gms_instance_sync(id, is_onetime | isc_local);
}