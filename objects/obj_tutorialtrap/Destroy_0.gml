audio_stop_sound(sfx_breakblock1);
audio_stop_sound(sfx_breakblock2);
scr_soundeffect(sfx_breakblock1, sfx_breakblock2);

repeat 4
	instance_create(x+ 16,y,obj_debris)

tile_layer_delete_at(1, x, y);
__background_set( e__BG.Index, 2, trapscreen2 );