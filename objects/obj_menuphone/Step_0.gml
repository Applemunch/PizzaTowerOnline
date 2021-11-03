if instance_exists(obj_player)
{
	var player = instance_nearest(x, y, obj_player);
	
	if distance_to_object(player) < 50 && player.state != -1 && player.state != states.door && !player.cutscene
	&& !instance_exists(obj_option) && !(instance_exists(obj_manual) && obj_manual.visible)
	{
		with obj_tv
		{
			message = lang_string("msg.titleoption")
			if repaintjokebuild
				message = "CBT SETTINGS"
			showtext = true
			alarm[0] = 2
		}
	}
}
