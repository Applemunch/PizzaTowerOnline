/// @description 
if place_meeting(x, y, obj_destructibles)
{
    inst = instance_place(x, y, obj_destructibles);
    if inst.object_index != obj_hungrypillar
        destroy = true;
    else
        destroy = false;
    depth = -6;
}
if place_meeting(x, y, obj_enemyblock)
{
    inst = instance_place(x, y, obj_enemyblock);
    destroy = true;
    depth = -6;
}
if place_meeting(x, y, obj_shotgunblock)
{
    inst = instance_place(x, y, obj_shotgunblock);
    destroy = true;
    depth = -6;
}
if place_meeting(x, y, obj_bombblock)
{
    inst = instance_place(x, y, obj_bombblock);
    destroy = true;
    depth = -6;
}
if place_meeting(x, y, obj_metalblock)
{
    inst = instance_place(x, y, obj_metalblock);
    if inst.object_index != obj_hungrypillar
        destroy = true;
    else
        destroy = false;
    depth = -6;
}
if place_meeting(x, y, obj_onwaybigblock_editor)
{
    inst = noone;
    depth = -6;
    destroy = true;
    oneway = true;
    oneway_size = instance_place(x, y, obj_onwaybigblock_editor).image_xscale;
}

if !destroy
{
    tile = layer_sprite_create("Tiles", x, y, sprite_index)
    layer_sprite_speed(tile, 0)
    layer_sprite_index(tile, image_index)
    layer_sprite_xscale(tile, image_xscale)
    layer_sprite_yscale(tile, image_yscale)
    instance_destroy()
}