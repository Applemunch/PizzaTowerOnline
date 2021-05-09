con = -1;
size = 0;

cancon = false;
nonet = false;
version = 1;

req = -1;

str = "Are you trying to play an online game offline?";
if os_is_network_connected(false)
	req = http_get(@"http://ptoleveleditor.000webhostapp.com/disclaimer");
else
{
	nonet = true;
	event_user(1);
}

t = 0;