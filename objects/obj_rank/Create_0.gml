image_speed = 0.5
depth = -8

if scr_checkskin(checkskin.p_anton)
	alarm[0] = 100;
else
{
	alarm[0] = 500;
	if audio_is_playing(mu_rankd)
	or audio_is_playing(mu_rankd_pc)
	{
		alarm[0] += 42;
		if audio_is_playing(mu_rankd_pc)
			alarm[0] += 10;
	}
	
	if audio_is_playing(mu_ranksuck)
		alarm[0] = room_speed * 23;
	if audio_is_playing(mu_ranksuck_pc)
		alarm[0] = room_speed * 2;
}
