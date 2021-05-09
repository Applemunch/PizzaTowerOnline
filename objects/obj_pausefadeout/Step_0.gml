if fadealpha > 1 && fadein = false
{
	if obj_pause.pause
	{
		obj_pause.pause = false
		instance_activate_all();
		
		if !global.panic
			instance_deactivate_object(obj_collectescape);
		event_perform(ev_alarm, 0);
		
		alarm[0] = 1;
		audio_resume_all();
	}
	else
	{
		audio_pause_all()
		obj_pause.pause = true
		
		instance_deactivate_all(true);
		instance_activate_object(obj_pause)
		instance_activate_object(obj_otherplayer)
		instance_activate_object(obj_gms)
		instance_activate_object(obj_wc)
		instance_activate_object(obj_onlinemenu)
		
		global.__chat = false;
	}

	fadein = true
}

if fadein = false
	fadealpha += 0.1
else if fadein = true
	fadealpha -= 0.1

if fadein = true && fadealpha < 0 
	instance_destroy()

instance_activate_object(obj_fadeout)
instance_destroy(obj_fadeout)