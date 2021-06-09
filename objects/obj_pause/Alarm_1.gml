/// @description title screen
with all
	if !persistent instance_destroy(id, false);

var title = true;
with obj_player1
{
	if place_meeting(x, y, obj_startgate) && state == states.victory
		title = false;
}

instance_destroy(obj_hallway);
instance_destroy(obj_fadeout);
audio_stop_all();

if (room == hub_room1 or room == cowboytask or room == Titlescreen or room == Scootertransition) && title
{
	pause = 0
	instance_activate_all();
	room = Realtitlescreen

	with obj_player1
	{
		character = "P"
		scr_characterspr()
	}
			
	scr_playerreset()

	obj_player1.state = states.titlescreen
	global.cowboyhat = false
	obj_player1.targetDoor = "A"
}
else if room == custom_lvl_room
{
	pause = 0
	global.cowboyhat = false
	
	instance_activate_all();
	
	scr_playerreset()
	obj_player1.targetDoor = "B"
	obj_player1.state = states.titlescreen;
	
	if obj_onlinemenu.level_id == 1
		obj_onlinemenu.menu = menutypes.menustart;
	else
		obj_onlinemenu.menu = menutypes.leveldetails;
	room_goto(editor_entrance);
}
else
{
	pause = 0
	global.cowboyhat = false
	instance_activate_all();
	scr_playerreset()
	obj_player.targetDoor = "A"
	room = hub_room1
}