if room == custom_lvl_room {
	tile_layer_delete_at(1, x, y);
}

if ds_list_find_index(global.saveroom, id) = -1
{
	var rep = global.gameplay == 0 ? 4 : 2; // amount of debris
	repeat rep
	{
		with instance_create(x + irandom(sprite_width), y + irandom(sprite_height), obj_debris)
		{
			image_xscale = abs(other.image_xscale);
			image_yscale = abs(other.image_yscale);
			
			if global.gameplay != 0
				sprite_index = spr_debris_NEW;
			if other.sprite_index == spr_destroyable_ss
				sprite_index = spr_debris_ss;
		}
	}
	
	//tile_layer_delete_at(1, x, y);
	if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
	{
		audio_stop_sound(sfx_breakblock1)
		audio_stop_sound(sfx_breakblock2) 
	}
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
	
	ds_list_add(global.saveroom, id)

	var roomname = room_get_name(room)
	if string_letters(roomname) != "PProom" && room != custom_lvl_room
	{
		var pizzacoin = irandom_range(0, 25)
		if pizzacoin == 5
			with instance_create(x,y,obj_pizzacoin)
				hsp = choose(-2,2)
	}
}