function gms_other_isowner(userid) {
	return gms_other_admin_rights(userid) & ar_owner;
}