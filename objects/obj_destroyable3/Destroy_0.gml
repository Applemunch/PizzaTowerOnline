if ds_list_find_index(global.saveroom, id) = -1
{
	var rep = global.gameplay == 0 ? 7 : 8;
	for(var i = 0; i <= rep; i++)
	{
		if global.gameplay == 0
		{
			var xx = sprite_width / 2;
			var yy = sprite_height / 2;
		}
		else
		{
			xx = random(sprite_width / 2) + sprite_width / 4;
			yy = random(sprite_height / 2) + sprite_height / 4;
		}
		with instance_create(x + xx, y + yy, obj_debris)
		{
			image_xscale = abs(other.image_xscale);
			image_yscale = abs(other.image_yscale);
			
			if other.sprite_index == spr_bigdestroyable_ss
				sprite_index = spr_bigdebris_ss;
			else if global.gameplay == 0
				sprite_index = spr_bigdebris;
			else
				sprite_index = spr_debris_NEW;
		}
	}
	
	/*
	tile_layer_delete_at(1, x, y);
	tile_layer_delete_at(1, x+32, y);
	tile_layer_delete_at(1, x+32, y+32);
	tile_layer_delete_at(1, x, y+32);
	*/
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
			with instance_create(x+16,y+16,obj_pizzacoin)
				hsp = choose(-2, 2)
	}
}

