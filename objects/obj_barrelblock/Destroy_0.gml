if (ds_list_find_index(global.saveroom, id) == -1)
{
    with (instance_create((x + 32), (y + 32), obj_metaldebris))
        sprite_index = spr_barrelblockdebris
    with (instance_create((x + 32), (y + 32), obj_metaldebris))
        sprite_index = spr_barrelblockdebris
    with (instance_create((x + 32), (y + 32), obj_metaldebris))
        sprite_index = spr_barrelblockdebris
    with (instance_create((x + 32), (y + 32), obj_metaldebris))
        sprite_index = spr_barrelblockdebris
    ds_list_add(global.saveroom, id)
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2);
}


