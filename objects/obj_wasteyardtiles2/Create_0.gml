/// @description
destroy = 0
oneway = 0
oneway_size = 1
image_speed = 0
depth -= 1;

var tiles = obj_wasteyardtiles2;
if (sprite_get_number(sprite_index) > 30 && global.autotile == true && room == rm_editor && global.loadeditor == false)
{
    inst[0] = instance_place((x + 32), y, tiles)
    inst[1] = instance_place((x - 32), y, tiles)
    inst[2] = instance_place(x, (y + 32), tiles)
    inst[3] = instance_place(x, (y - 32), tiles)
    inst[4] = instance_place((x + 32), (y + 32), tiles)
    inst[5] = instance_place((x - 32), (y + 32), tiles)
    inst[6] = instance_place((x + 32), (y - 32), tiles)
    inst[7] = instance_place((x - 32), (y - 32), tiles)
    for (var i = 0; i < 8; i++)
    {
        if instance_exists(inst[i])
        {
            with (inst[i])
                image_index = scr_autotile(tiles)
        }
    }
    image_index = scr_autotile(tiles)
}
if (sprite_get_number(sprite_index) < 5)
{
    inst[0] = instance_place((x + 32), y, object_index)
    inst[1] = instance_place((x - 32), y, object_index)
    for (i = 0; i < 2; i++)
    {
        if instance_exists(inst[i])
        {
            with (inst[i])
                image_index = scr_autotile_platform()
        }
    }
    image_index = scr_autotile_platform()
}

inst = noone
if room != rm_editor && !destroy
    alarm[0] = 1