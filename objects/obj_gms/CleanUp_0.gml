/// @description log out
if working
{
	if gms_info_isloggedin()
		gms_logout();
	if room != Realtitlescreen && room != characterselect
		event_perform(ev_alarm, 4);
}