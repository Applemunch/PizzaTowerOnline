///@desc rousrDissonance - Create
if instance_number(object_index) > 1
{
	instance_destroy();
	exit;
}

if !global.richpresence
{
	instance_destroy();
	exit;
}

rousrDissonance_event_create();