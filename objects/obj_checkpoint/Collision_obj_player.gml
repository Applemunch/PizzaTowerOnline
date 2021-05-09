if (collisioned or ds_list_find_index(global.baddieroom, id) != -1 or other.state == states.gameover)
    return;

global.checkpointroom = room
global.checkpointDoor = "CH"
global.checkpointCollect = global.collect
global.checkpointCollectN = global.collectN
global.checkpoint_pizzacoin = global.pizzacoin
//global.checkpoint_hp = global.hp
global.checkpoint_shroomfollow = global.shroomfollow
global.checkpoint_cheesefollow = global.cheesefollow
global.checkpoint_tomatofollow = global.tomatofollow
global.checkpoint_pineapplefollow = global.pineapplefollow
global.checkpoint_sausagefollow = global.sausagefollow
global.checkpoint_key_inv = global.key_inv
//global.checkpoint_pizzasdelivered = global.pizzasdelivered

/*
if instance_exists(obj_gnome_checklist)
{
    with (obj_gnome_checklist)
    {
        global.checkpoint_gnomecheck0 = gnome_check[0]
        global.checkpoint_gnomecheck1 = gnome_check[1]
        global.checkpoint_gnomecheck2 = gnome_check[2]
        global.checkpoint_gnomecheck3 = gnome_check[3]
        global.checkpoint_gnomecheck4 = gnome_check[4]
    }
}
*/

ds_list_add(global.saveroom, id)
if (!ds_list_empty(global.baddieroom))
{
    ds_list_clear(global.old_baddieroom)
    ds_list_copy(global.old_baddieroom, global.baddieroom)
}
if (!ds_list_empty(global.saveroom))
{
    ds_list_clear(global.old_saveroom)
    ds_list_copy(global.old_saveroom, global.saveroom)
}