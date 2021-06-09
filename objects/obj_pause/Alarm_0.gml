/// @description restart
with all
	if !persistent instance_destroy(id, false);

var timeattack = global.timeattack
var roomname = room_get_name(room)

global.pizzacoin = global.pizzacoinstart

audio_resume_all();
audio_stop_all();
global.music = -1;

if string_startswith(roomname, "entrance")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
	room_goto_new(entrance_1)
}
	
else if string_startswith(roomname, "medieval")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0;
	obj_player1.targetDoor = "A"
	room_goto_new(medieval_1)
}	

if string_startswith(roomname, "chateau")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0;
	obj_player1.targetDoor = "A"
	room_goto_new(chateau_1)
}	

else if string_startswith(roomname, "ruin")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0;
	obj_player1.targetDoor = "A"
	room_goto_new(ruin_1)
}	

else if string_startswith(roomname, "dungeon")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0;
	obj_player1.targetDoor = "A"
	room_goto_new(dungeon_1)
}

else if string_startswith(roomname, "floor1_")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
	room_goto_new(floor1_room0)
}	
else if string_startswith(roomname, "floor2_")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
	room_goto_new(floor2_room9)
}	
else if string_startswith(roomname, "floor3_")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
	room_goto_new(floor3_room0)
}	
else if string_startswith(roomname, "floor4_")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
	room_goto_new(floor4_room0)
}	
else if string_startswith(roomname, "floor5_")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
	room_goto_new(floor5_room1)
}	
else if string_startswith(roomname, "golf_")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
	room_goto_new(golf_room1)
}

else if string_startswith(roomname, "graveyard")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
	room_goto_new(graveyard_1)
}	

else if string_startswith(roomname, "farm")
{
	instance_activate_all();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
	room_goto_new(farm_1)
}	

else if string_startswith(roomname, "ufo")
{
	instance_activate_all();
	room_goto_new(ufo_1)
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
}	

else if string_startswith(roomname, "dragonlair")
{
	instance_activate_all();
	room_goto_new(dragonlair_1)
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
}	
else if string_startswith(roomname, "strongcold")
{
	instance_activate_all();
	room_goto_new(strongcold_10)
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
}
else if string_startswith(roomname, "beach")
{
	instance_activate_all();
	room_goto_new(beach_1)
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
}
else if string_startswith(roomname, "forest")
{
	instance_activate_all();
	room_goto_new(forest_1)
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
}
else if string_startswith(roomname, "etb")
{
	instance_activate_all();
	room_goto_new(etb_1)
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
}
else if string_startswith(roomname, "steamcc")
{
	instance_activate_all();
	room_goto_new(steamcc_1)
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
}
else if room == custom_lvl_room
{
	instance_activate_all();
	room_restart();
	scr_playerreset()
	pause = 0
	obj_player1.targetDoor = "A"
}

global.timeattack = timeattack;
if timeattack
{
	with obj_timeattack
		alarm[1] = 60;
}