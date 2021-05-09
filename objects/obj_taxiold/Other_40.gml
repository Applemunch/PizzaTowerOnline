if sprite_index == spr_taximove
{
    with obj_player1
    {
        x = obj_stopsign.x
        y = obj_stopsign.y
    }
    alarm[0] = 10
    sprite_index = spr_taxiidle
    with instance_create(obj_stopsign.x - 480, obj_stopsign.y, obj_taxidud)
        playerid = other.playerid
}