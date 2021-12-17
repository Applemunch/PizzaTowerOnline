if !instance_exists(obj_pause)
{
	instance_destroy();
	exit;
}

if fadealpha > 1 && !fadein
{
	if obj_pause.pause
	{
		obj_pause.pause = false;
		
		var act = noone;
		while act != undefined
		{
			act = array_pop(obj_pause.objectlist);
			instance_activate_object(act);
		}
		
		if code_is_compiled()
			alarm[0] = 1;
		else
			event_perform(ev_alarm, 0);
		
		audio_resume_all();
	}
	else
	{
		audio_pause_all()
		obj_pause.pause = true;
		
		with all
		{
			if object_index != obj_pause && object_index != obj_otherplayer && object_index != obj_gms
			&& object_index != obj_wc && object_index != obj_onlinemenu && id != other.id
			{
				array_push(obj_pause.objectlist, id);
				instance_deactivate_object(id);
			}
			if object_index == obj_fadeout
				instance_destroy();
		}
		
		global.__chat = false;
	}

	fadein = true
}

if !fadein
	fadealpha += 0.1
else
{
	fadealpha -= 0.1
	if fadealpha <= 0
		instance_destroy();
}
