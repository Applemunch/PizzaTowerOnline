if distance_to_object(obj_player1) < 50 && !instance_exists(obj_option)
{
	with obj_tv
	{
		message = "OPTION"
		showtext = true
		alarm[0] = 2
	}
}