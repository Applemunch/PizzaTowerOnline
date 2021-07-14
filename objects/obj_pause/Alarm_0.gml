/// @description restart
with all
	if !persistent instance_destroy(id, false);

var timeattack = global.timeattack
var roomname = room_get_name(room)

global.pizzacoin = global.pizzacoinstart

audio_resume_all();
audio_stop_all();
instance_activate_all();
global.music = -1;

if string_startswith(roomname, "entrance")
// entrance
	room_goto_new(entrance_1)
else if string_startswith(roomname, "medieval")
// medieval
	room_goto_new(medieval_1)
if string_startswith(roomname, "chateau")
// chateau
	room_goto_new(chateau_1)
else if string_startswith(roomname, "ruin")
// ruin
	room_goto_new(ruin_1)
else if string_startswith(roomname, "dungeon")
// dungeon
	room_goto_new(dungeon_1)
else if string_startswith(roomname, "floor1_")
// desert
	room_goto_new(floor1_room0)
else if string_startswith(roomname, "floor2_")
// mansion
	room_goto_new(floor2_room9)
else if string_startswith(roomname, "floor3_")
// factory
	room_goto_new(floor3_room0)
else if string_startswith(roomname, "floor4_")
// sewer
	room_goto_new(floor4_room0)
else if string_startswith(roomname, "floor5_")
// freezer
	room_goto_new(floor5_room1)
else if string_startswith(roomname, "golf_")
// original golf
	room_goto_new(golf_room1)
else if string_startswith(roomname, "graveyard")
// graveyard
	room_goto_new(graveyard_1)
else if string_startswith(roomname, "farm")
// farm
	room_goto_new(farm_1)
else if string_startswith(roomname, "ufo")
// pinball
	room_goto_new(ufo_1)
else if string_startswith(roomname, "dragonlair")
// dragon lair
	room_goto_new(dragonlair_1)
else if string_startswith(roomname, "strongcold")
// strongcold
	room_goto_new(strongcold_10)
else if string_startswith(roomname, "beach")
// beach
	room_goto_new(beach_1)
else if string_startswith(roomname, "forest")
// forest
	room_goto_new(forest_1)
else if string_startswith(roomname, "kungfu")
// kung fu
	room_goto_new(kungfu_1)
else if string_startswith(roomname, "etb")
// early test build
	room_goto_new(etb_1)
else if string_startswith(roomname, "steamcc")
// steamy cotton candy
	room_goto_new(steamcc_1)
else if room == custom_lvl_room
// level editor level
	room_restart();

// player reset shit
pause = 0;
scr_playerreset();
with obj_player1
	targetDoor = "A";

// reset time attack
global.timeattack = timeattack;
if timeattack
{
	with obj_timeattack
		alarm[1] = 60;
}