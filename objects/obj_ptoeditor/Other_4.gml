// wipe all objects
if instance_exists(obj_player)
{
	with all
		persistent = false;
	room_restart();
}