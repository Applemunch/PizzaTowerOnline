function scr_characterentrance(argument0)
{
	// entrance
	if audio_is_playing(mu_entrance) && argument0 != "P"
	{
		audio_stop_sound(mu_entrance);
		with obj_music
			event_perform(ev_other, ev_room_start);
	}
	if audio_is_playing(mu_noiseentrance) && argument0 != "N"
	{
		audio_stop_sound(mu_noiseentrance);
		with obj_music
			event_perform(ev_other, ev_room_start);
	}
	if audio_is_playing(mu_vigientrance) && argument0 != "V"
	{
		audio_stop_sound(mu_vigientrance);
		with obj_music
			event_perform(ev_other, ev_room_start);
	}
	if audio_is_playing(mu_snickentrance) && argument0 != "S"
	{
		audio_stop_sound(mu_snickentrance);
		with obj_music
			event_perform(ev_other, ev_room_start);
	}
	if audio_is_playing(mu_pizzyentrance) && argument0 != "SP"
	{
		audio_stop_sound(mu_pizzyentrance);
		with obj_music
			event_perform(ev_other, ev_room_start);
	}
	
	// shitk golf
	if (audio_is_playing(mu_minigolf) && scr_checkskin(checkskin.s_shit))
	or (audio_is_playing(mu_susgolf) && !scr_checkskin(checkskin.s_shit))
	{
		audio_stop_sound(mu_minigolf);
		audio_stop_sound(mu_susgolf);
		with obj_music
			event_perform(ev_other, ev_room_start);
	}
}