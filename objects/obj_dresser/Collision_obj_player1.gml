if other.key_up2 && other.state == states.normal && !instance_exists(obj_skinchoice)
{
	other.key_up2 = false;
	instance_create(0, 0, obj_skinchoice);
}
