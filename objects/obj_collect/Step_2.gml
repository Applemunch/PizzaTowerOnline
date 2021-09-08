if room == rm_editor exit;

if global.collectsound < 10
	global.collectsound += 1;

// collect
var player = instance_place(x, y, obj_player);
if player && player.state != states.gameover && player.state != states.hitlag
{
	if player.character == "V" 
		global.playerhealth = clamp(global.playerhealth + 1, 0, 100);
	global.heattime = clamp(global.heattime + 10, 0, 60);
	
	event_user(0);
}
if place_meeting(x, y, obj_antonball)
	event_user(0);