depth = 12;
if place_meeting(x, y, obj_destructibles)
	depth = 112;

image_speed = 0;

// level ladders
var roomname = room_get_name(room);

// factory
if string_startswith(roomname, "floor3_room")
	sprite_index = spr_ladder_factory;

// sugary
if string_startswith(roomname, "cotton_")
	sprite_index = spr_ladderSP_rope;
else if check_sugary()
	sprite_index = spr_ladderSP;

// the new ones
if scr_stylecheck(2)
{
	#region snick rematch
	
	if global.snickrematch
	{
		if string_endswith(string_letters(roomname), "medieval")
		{
			for (var i = 0; i < 20; ++i)
			{
				if string_startswith(roomname, "medieval_" + string(i))
				{
					if i <= 5
						sprite_index = spr_ladder_medieval_re;
					else
						sprite_index = spr_ladder_medieval2_re;
				}
			}
		}
		if string_endswith(string_letters(roomname), "ruin")
			sprite_index = spr_ladder_ruin_re
		if string_startswith(roomname, "dungeon_")
		{
			for (var i = 0; i < 20; ++i)
			{
				if string_startswith(roomname, "dungeon_" + string(i))
				{
					if i <= 6
						sprite_index = spr_ladder_dungeon1_re;
					else if i <= 8
						sprite_index = spr_ladder_dungeon2_re;
					else
						sprite_index = spr_ladder_dungeon3_re;
				}
			}
		}
		if string_endswith(string_letters(roomname), "secret")
			sprite_index = spr_ladder_secret_re
	}
	else
	
	#endregion
	{
		if string_startswith(roomname, "floor4_room")
			sprite_index = spr_ladder_sewer
		if string_startswith(roomname, "floor5_room")
			sprite_index = spr_ladder_freezer
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
		or string_startswith(roomname, "minigolf_")
			sprite_index = spr_ladder_golf

		if string_endswith(string_letters(roomname), "medieval")
			sprite_index = spr_ladder_medieval
		if string_endswith(string_letters(roomname), "chateau")
			sprite_index = spr_ladder_chateau
		if string_endswith(string_letters(roomname), "ruin")
			sprite_index = spr_ladder_ruin
		if string_startswith(roomname, "dungeon_")
		{
			for (var i = 0; i < 20; ++i)
			{
				if string_startswith(roomname, "dungeon_" + string(i))
				{
					if i <= 6
						sprite_index = spr_ladder_dungeon1;
					else if i <= 8
						sprite_index = spr_ladder_dungeon2;
					else
						sprite_index = spr_ladder_dungeon3;
				}
			}
		}
		if string_endswith(string_letters(roomname), "kungfu")
			sprite_index = spr_ladder_kungfu

		if string_endswith(string_letters(roomname), "secret") && !check_sugary()
			sprite_index = spr_ladder_secret
	}
}

// autotile
if room == custom_lvl_room
	alarm[0] = 1;
else
	event_perform(ev_alarm, 0);
