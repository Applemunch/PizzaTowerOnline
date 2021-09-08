if room != rank_room && room != timesuproom && room != editor_entrance && room != custom_lvl_room
&& global.roommessage != ""
{
	message = global.roommessage
	showtext = true
	alarm[0] = 200
}