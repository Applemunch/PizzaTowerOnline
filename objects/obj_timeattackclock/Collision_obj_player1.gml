if !global.timeattack
{
    global.timeattack = true;
    scr_soundeffect(sfx_killingblow);
    instance_deactivate_object(id);
	
	with obj_timeattack
	{
		alarm[1] = -1;
		event_perform(ev_other, ev_room_start);
	}
}