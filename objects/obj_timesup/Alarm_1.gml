if instance_exists(obj_onlinemenu)
{
	scr_playerreset()
	global.pizzacoin = global.pizzacoinstart;
	
	obj_player1.targetDoor = "B";
	obj_player1.state = states.titlescreen;
	
	obj_onlinemenu.menu = menutypes.leveldetails;
	room_goto(editor_entrance);
}
else
{
	obj_player1.state = states.gameover;
	obj_player1.y = room_height * 2;
}