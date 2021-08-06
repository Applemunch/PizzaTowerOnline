if instance_exists(stored_id)
{
	stored_id.visible = true;
	stored_id.depth = 0;
	instance_create(stored_id.x, stored_id.y, obj_genericpoofeffect);
}