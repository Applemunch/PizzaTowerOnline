if room == rm_editor exit;

if ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge = false
{
	repeat (6) with instance_create(x + 16,y,obj_pizzadebris)
	{
		if other.sprite_index = spr_halloweensmallblock
		or other.sprite_index == spr_xmasblock
			sprite_index = spr_halloweendebris;
		else if other.sprite_index == spr_destroyable2_ss
			sprite_index = spr_pizzadebris_ss;
		else
			sprite_index = spr_pizzadebris;
	}
	create_baddiegibsticks(x + 16, y + 16);
	
	with instance_create(x, y, obj_collect)
		ID = other.id;
	tile_layer_delete_at(1, x, y);
	
	if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
	{
		audio_stop_sound(sfx_breakblock1)
		audio_stop_sound(sfx_breakblock2) 
	}
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
}