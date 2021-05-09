if obj_player1.character = "V"
{
	with all
	{
		if !persistent && place_meeting(x, y, other)
			instance_destroy(id, false);
	}
}