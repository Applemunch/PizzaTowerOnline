if room == rm_editor exit;
if global.gameplay == 0
	instance_destroy();
else
	event_inherited();