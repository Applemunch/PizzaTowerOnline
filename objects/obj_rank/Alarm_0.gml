if instance_exists(obj_onlinemenu)
{
	global.pizzacoin = global.pizzacoinstart;
	
	scr_playerreset();
	obj_player1.targetDoor = "B";
	obj_player1.state = states.titlescreen;
	
	obj_onlinemenu.menu = menutypes.leveldetails;
	room_goto(editor_entrance);
}
else
{
	global.pizzacoinstart = global.pizzacoin;
	
	scr_playerreset()
	obj_player1.state = states.normal
	obj_player1.targetDoor = "A"
	room = hub_room1
}