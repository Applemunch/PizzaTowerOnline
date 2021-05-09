if ds_list_find_index(global.saveroom, id) == -1
{
    for (var i = 0; i < ds_list_size(deactivatedlist); i++)
        instance_activate_object(deactivatedlist[| i]);
    activated = true;
}