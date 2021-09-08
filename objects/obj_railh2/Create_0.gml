depth = 16;
image_speed = 0.35;

if room == custom_lvl_room
	alarm[0] = 1;
else
	event_perform(ev_alarm, 0);
spdh = 5;