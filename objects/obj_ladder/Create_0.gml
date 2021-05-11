depth = 12;
image_speed = 0;

var roomname = room_get_name(room);

if string_startswith(roomname, "floor3_room")
	sprite_index = spr_ladder_factory
if string_startswith(roomname, "floor4_room")
	sprite_index = spr_ladder_sewer
if string_startswith(roomname, "floor2_room")
{
	for (var i = 0; i < 20; ++i)
	{
		if string_startswith(roomname, "floor2_room" + string(i))
		{
			if i <= 8
				sprite_index = spr_ladder_mansion;
			else if i > 8
				sprite_index = spr_ladder_forest;
		}
	}
}
if string_startswith(roomname, "golf_room")
	sprite_index = spr_ladder_golf
if string_endswith(string_letters(roomname), "secret")
	sprite_index = spr_ladder_secret

if string_startswith(roomname, "steamcc_")
	sprite_index = spr_ladderSP_rope
if room == hub_roomSP
	sprite_index = spr_ladderSP

var up = place_meeting(x, y - 32, obj_ladder);
var down = place_meeting(x, y + 32, obj_ladder);
if up
{
	if down
		image_index = 0;
	else if !scr_solid(x, y + 32) or place_meeting(x, y + 32, obj_destructibles)
		image_index = 1;
}
else if down
	image_index = 2;