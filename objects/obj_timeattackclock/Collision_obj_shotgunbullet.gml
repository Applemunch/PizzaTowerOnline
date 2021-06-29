if !instance_exists(obj_fadeout)
{
	event_user(0);
	instance_destroy(other.id);
}