/// @description
if instance_number(object_index) > 1
{
	instance_destroy();
	exit;
}

det = "";
running = global.richpresence;

if running
	event_user(0);

charprev = "";
setda = false;