/*
if (room != rm_editor)
    return;
if (selected && multiple_select == 0)
{
    if (!instance_exists(obj_script_menu))
        inst = instance_create_depth(((x + sprite_width) + 2), (y - 32), -10000, obj_script_menu)
    with (inst)
    {
        x = ((other.x + other.sprite_width) + 2)
        y = (other.y - 32)
        _id = other.id
        func = 2
        width = 160
        height = 116
    }
}