if !global.timeattack
	instance_deactivate_object(inst_4FF95D36);
else
{
	instance_activate_object(inst_4FF95D36);
	if instance_exists(inst_4FF95D36)
	{
		with obj_player while place_meeting(x, y, inst_4FF95D36)
			x++;
	}
}