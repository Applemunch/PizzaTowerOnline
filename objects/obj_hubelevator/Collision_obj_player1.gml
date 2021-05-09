if state == 0
{
	with other
	{
		if key_up && grounded && state == states.normal && y = other.y + 50
		{
			audio_stop_sound(sfx_step);
			scr_soundeffect(sfx_step);
			
			doorx = other.x + 50;
			other.state = 1;
		}
	}
}