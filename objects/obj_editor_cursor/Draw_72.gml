/// @description dont fucking drag it
with obj_wc
{
	if instance_exists(WC_dragobj) && WC_dragobj.id == other.id
		WC_dragobj = noone;
}