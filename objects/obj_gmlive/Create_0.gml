/// @description Don't forget to place this object in the first room!
// this is a simple safeguard against making multiple obj_gmlive instances
#macro live_enabled false
#macro live_enabled:debug true
if live_enabled
{
	instance_destroy();
	exit;
}

if (instance_number(obj_gmlive) > 1) {
	var first = instance_find(obj_gmlive, 0);
	if (id != first) { instance_destroy(); exit; }
}

// change IP/port here if you connect to remote gmlive-server:
live_init(1, "http://localhost:5100", "");