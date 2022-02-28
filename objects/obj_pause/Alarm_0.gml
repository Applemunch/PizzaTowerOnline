/// @description restart
with all
	if !persistent instance_destroy(id, false);

var timeattack = global.timeattack;
var snickrematch = global.snickrematch;
var roomname = room_get_name(room);

global.pizzacoin = global.pizzacoinstart;

audio_resume_all();
audio_stop_all();
instance_activate_all();
global.music = -1;

// player reset shit
pause = 0;
scr_playerreset();
with obj_player1
	targetDoor = "A";

global.snickrematch = snickrematch; // stored

// modifier
global.failedmod = false;
if global.modifier != -1
{
	with obj_drpc_updater
		event_user(3);
}

// go to da levels
if string_startswith(roomname, "entrance")
	room_goto_new(entrance_1)
else if string_startswith(roomname, "medieval")
	room_goto_new(medieval_1)
if string_startswith(roomname, "chateau")
	room_goto_new(chateau_1)
else if string_startswith(roomname, "ruin")
	room_goto_new(ruin_1)
else if string_startswith(roomname, "dungeon")
	room_goto_new(dungeon_1)
else if string_startswith(roomname, "floor1_")
	room_goto_new(floor1_room0)
else if string_startswith(roomname, "floor2_")
	room_goto_new(floor2_room9)
else if string_startswith(roomname, "floor3_")
	room_goto_new(floor3_room0)
else if string_startswith(roomname, "floor4_")
	room_goto_new(floor4_room0)
else if string_startswith(roomname, "floor5_")
	room_goto_new(floor5_room1)
else if string_startswith(roomname, "golf_")
	room_goto_new(golf_room1)
else if string_startswith(roomname, "graveyard")
	room_goto_new(graveyard_1)
else if string_startswith(roomname, "farm")
	room_goto_new(farm_1)
else if string_startswith(roomname, "ufo")
	room_goto_new(ufo_1)
else if string_startswith(roomname, "dragonlair")
	room_goto_new(dragonlair_1)
else if string_startswith(roomname, "strongcold")
	room_goto_new(strongcold_10)
else if string_startswith(roomname, "beach")
	room_goto_new(beach_1)
else if string_startswith(roomname, "forest")
	room_goto_new(forest_1)
else if string_startswith(roomname, "kungfu")
	room_goto_new(kungfu_1)
else if string_startswith(roomname, "war")
	room_goto_new(war_1)
else if string_startswith(roomname, "etb")
	room_goto_new(etb_1)
else if string_startswith(roomname, "ancient")
	room_goto_new(ancient_1)
else if string_startswith(roomname, "grinch")
	room_goto_new(grinch_1)
else if string_startswith(roomname, "cotton")
	room_goto_new(cotton_1)
else if string_startswith(roomname, "jawbreaker")
	room_goto_new(jawbreaker_1)
else if room == custom_lvl_room
	room_restart();

// reset time attack
global.timeattack = timeattack;
if timeattack
{
	with obj_timeattack
		alarm[1] = 60;
}

// create nice fadeout instead of just a cut into the level
with instance_create(0, 0, obj_fadeout)
{
	fadealpha = 1;
	fadein = true;
}
