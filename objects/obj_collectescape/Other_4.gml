event_inherited();
if !global.panic
&& (global.modifier != mods.no_toppings or !place_meeting(x, y, obj_notoppingmod_del))
{
	instance_deactivate_object(id);
	visible = true;
}