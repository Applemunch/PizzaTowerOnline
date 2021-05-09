/// @description 
if place_meeting(x, y, obj_destructibles)
{
    inst = instance_place(x, y, obj_destructibles)
    if (inst.object_index != obj_hungrypillar)
        destroy = 1
    else
        destroy = 0
    depth = -6
}
if place_meeting(x, y, obj_enemyblock)
{
    inst = instance_place(x, y, obj_enemyblock)
    destroy = 1
    depth = -6
}
if place_meeting(x, y, obj_shotgunblock)
{
    inst = instance_place(x, y, obj_shotgunblock)
    destroy = 1
    depth = -6
}
if place_meeting(x, y, obj_bombblock)
{
    inst = instance_place(x, y, obj_bombblock)
    destroy = 1
    depth = -6
}
if place_meeting(x, y, obj_metalblock)
{
    inst = instance_place(x, y, obj_metalblock)
    if (inst.object_index != obj_hungrypillar)
        destroy = 1
    else
        destroy = 0
    depth = -6
}
/*
if place_meeting(x, y, obj_onwaybigblock_editor)
{
    inst = -4
    depth = -6
    destroy = 1
    oneway = 1
    oneway_size = (instance_place(x, y, obj_onwaybigblock_editor)).image_xscale
}
*/

if !destroy
{
    tile = layer_sprite_create("Tiles", x, y, sprite_index)
    layer_sprite_speed(tile, 0)
    layer_sprite_index(tile, image_index)
    layer_sprite_xscale(tile, image_xscale)
    layer_sprite_yscale(tile, image_yscale)
    instance_destroy()
}