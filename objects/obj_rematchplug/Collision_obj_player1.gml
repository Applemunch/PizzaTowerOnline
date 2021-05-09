if string_startswith(room_get_name(room), "floor2")
or string_startswith(room_get_name(room), "etb_")
{
	with other
	{
		if scr_knightbump(true, true)
			exit;
	}
}

scr_hurtplayer(other)