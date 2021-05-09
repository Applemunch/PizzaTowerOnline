if global.panic == true
{
    ds_list_add(global.saveroom, id)
    global.gerome = true;
    global.stylelock = true;
    instance_create(x, y, obj_geromefollow)
    instance_destroy()
}