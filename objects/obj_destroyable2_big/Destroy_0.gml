if room == rm_editor exit;

if  ds_list_find_index(global.saveroom, id) = -1 && global.snickchallenge = false
{
	repeat (6) with instance_create(x+ 32,y+32,obj_debris)
	{
		if other.sprite_index == spr_halloweenbigblock
		or other.sprite_index == spr_xmasbigblock
			sprite_index = spr_halloweenbigdebris
		else if other.sprite_index == spr_destroyable2big_ss
			sprite_index = spr_bigpizzadebris_ss
		else
			sprite_index = spr_bigpizzadebris
	}
	
	if content == obj_null
	{
		with instance_create(x+32,y+32,obj_pizzaslice)
			hsp = 2
		with instance_create(x+32,y+32,obj_pizzaslice)
			hsp = -2
	}
	else
		instance_create(x + 32, y + 32, content);
	
	repeat 3
		create_baddiegibsticks(x + 32, y + 32);
	
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
}

