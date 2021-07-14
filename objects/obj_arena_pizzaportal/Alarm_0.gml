if stored_id != noone
{
    instance_activate_object(stored_id)
    if instance_exists(stored_id)
		instance_create(stored_id.x, stored_id.y, obj_genericpoofeffect)
}
sprite_index = spr_pizzaportal_disappear;
image_speed = 0.35;
image_index = 0;