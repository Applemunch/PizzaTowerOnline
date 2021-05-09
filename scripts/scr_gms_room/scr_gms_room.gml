function scr_gms_room()
{
	if room != custom_lvl_room
	{
		var r = room;
		var rname = room_get_name(r);
		
		if string_endswith(rname, "_NEW")
			r = asset_get_index(string_replace(rname, "_NEW", ""));
		if r == -1
			r = room;
		
		return r;
	}
	else
	{
		if obj_onlinemenu.paging_type == 3
			return custom_lvl_room + 32 + obj_onlinemenu.level_id;
		else
			return -obj_onlinemenu.level_id;
	}
}