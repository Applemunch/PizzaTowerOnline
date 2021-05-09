if (ds_list_find_index(global.saveroom, id) != -1)
{
    collisioned = 1
    sprite_index = spr_checkpoint_activated
	exit
}

if global.panic or global.snickchallenge or global.timeattack or global.gameplay != 0
	instance_destroy();