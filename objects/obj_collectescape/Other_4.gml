event_inherited();

if global.modifier == mods.no_toppings && place_meeting(x, y, obj_notoppingmod_del)
	instance_destroy();
else if !global.panic
{
	instance_deactivate_object(id);
	visible = true;
}
