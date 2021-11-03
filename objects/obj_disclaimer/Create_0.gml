if room != rm_disclaimer
{
	instance_destroy();
	exit;
}
global.onlinemode = debug;

if repaintjokebuild
{
	event_user(0);
	exit;
}

con = -1;
size = 0;
cancon = false;

version = 4;
drm = true;

str = lang_string("disclaimer.offline");

req = -1;
net = os_is_network_connected();
if net == true
	req = http_get(base64_decode("aHR0cDovL3B0b2xldmVsZWRpdG9yLjAwMHdlYmhvc3RhcHAuY29tL2Rpc2NsYWltZXI="));
else
	event_user(1);

t = 0;