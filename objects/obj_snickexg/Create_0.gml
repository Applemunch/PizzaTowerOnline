event_inherited();

maxspeed = 1
quillt = 0

if global.snickrematch && global.gameplay == 0
{
    with obj_tv
    {
        showtext = 1
        message = "SNECK IS COMING"
        alarm[0] = 100
    }
}