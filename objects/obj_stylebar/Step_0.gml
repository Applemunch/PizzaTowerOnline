if global.gameplay == 0
	exit;

if global.style > 55 && global.stylethreshold < 3
{
    global.stylethreshold += 1
    global.style = global.style - 55;
	
	/*
    switch global.stylethreshold
    {
        case 0:
            pop = spr_mildpop
            idle = 86
            break
        case 1:
            pop = spr_antsypop
            idle = 2308
            break
        case 2:
            pop = spr_madpop
            idle = 2176
            break
        case 3:
            pop = spr_crazypop
            idle = 954
            break
    }
    
    index = 0
    sprite = pop
	*/
	
    scr_heatup()
}

if global.style < 0 && global.stylethreshold != 0
{
    global.stylethreshold -= 1;
    global.style = global.style + 55;
	
	/*
    switch global.stylethreshold
    {
        case 0:
            pop = spr_mildpop
            idle = 86
            break
        case 1:
            pop = spr_antsypop
            idle = 2308
            break
        case 2:
            pop = spr_madpop
            idle = 2176
            break
        case 3:
            pop = spr_crazypop
            idle = 954
            break
    }
    
    index = 0
    sprite = pop
	*/
	
    scr_heatdown()
}
//if sprite == pop && floor(index) == (sprite_get_number(sprite) - 1)
//    sprite = idle

if global.style < 0 && global.stylethreshold == 0
    global.style = 0
if global.stylethreshold == 3 && global.style > 55
    global.style = 55

/*
visible = obj_tv.visible;
if obj_player1.y < 200
    alpha = 0.3;
else if (!(room == rank_room || room == timesuproom || room == boss_room1 || room == Realtitlescreen || room == characterselect))
    alpha = 1
index += 0.35
*/