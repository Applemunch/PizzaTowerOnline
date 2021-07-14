if !collisioned && ds_list_find_index(global.saveroom, id) == -1
{
    collisioned = true;
    targetplayer = other.id;
}