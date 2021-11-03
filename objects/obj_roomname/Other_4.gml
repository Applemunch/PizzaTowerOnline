var msg = lang_string("roomname." + room_get_name(room));
if string_startswith(msg, "roomname.") or room == hub_room1
	msg = global.roommessage;

if room != rank_room && room != timesuproom && room != editor_entrance && room != custom_lvl_room && room != Realtitlescreen
&& msg != ""
{
	message = msg
	showtext = true
	alarm[0] = 200
}
else if msg != ""
{
	yi = -50
	showtext = false
	global.roommessage = "";
}