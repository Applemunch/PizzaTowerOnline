event_inherited();

maxspeed = 1.25
cantp = room_speed * 3

if global.snickrematch && global.gameplay == 0
{
    with obj_tv
    {
        showtext = 1
        message = "SNACK IS COMING"
        alarm[0] = 100
    }
}