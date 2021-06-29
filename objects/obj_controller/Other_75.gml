if async_load[? "event_type"] == "gamepad discovered"
{
	if connected
		ds_list_add(othergamepad, global.cont);
	
	var ind = async_load[? "pad_index"];
	with obj_roomname
	{
		message = "USING GAMEPAD " + string(ind);
		showtext = true;
		alarm[0] = room_speed;
	}
		
	global.cont = ind;
	connected = true;
	scr_soundeffect(sfx_contin);
}
if async_load[? "event_type"] == "gamepad lost"
{
	var pad = async_load[? "pad_index"];
	var size = ds_list_size(othergamepad) - 1;
	
	if size > -1
	{
		if global.cont == pad
		{
			var ind = ds_list_find_value(othergamepad, size);
			ds_list_delete(othergamepad, size);
			
			with obj_roomname
			{
				message = "USING GAMEPAD " + string(ind);
				showtext = true;
				alarm[0] = room_speed;
			}
			
			global.cont = ind;
		}
		else
			ds_list_delete(othergamepad, ds_list_find_index(othergamepad, pad));
	}
	else
	{
		with obj_roomname
		{
			message = "GAMEPAD " + string(pad) + " OUT";
			showtext = true;
			alarm[0] = room_speed;
		}
		
		global.cont = -1;
		connected = false;
	}
	scr_soundeffect(sfx_contout);
}