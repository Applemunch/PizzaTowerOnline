if global.gameplay == 0 && !global.panic
{
	instance_destroy();
	exit;
}
event_inherited();