// wipe all objects
if instance_exists(obj_player)
{
	with all
	{
		if object_index != obj_wc
			persistent = false;
	}
	room_restart();
}