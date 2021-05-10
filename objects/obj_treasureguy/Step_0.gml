if room == rm_editor exit;


switch (state)
{
    case states.idle: scr_enemy_idle (); break;
    case states.turn: scr_enemy_turn (); break;
    case states.walk: scr_enemy_walk (); break;
    case states.land: scr_enemy_land (); break;
    case states.hit: scr_enemy_hit (); break;
    case states.stun: scr_enemy_stun (); break;
    case states.pizzagoblinthrow: scr_pizzagoblin_throw (); break;
    // grabbed state here
	    case states.rage: scr_enemy_rage (); break;
}


if  state = states.stun && stunned > 100 && birdcreated = false
{
birdcreated = true
with instance_create(x,y, obj_enemybird)
ID = other.id
}



if state != states.stun
birdcreated = false

//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}

targetplayer = instance_nearest(x, y, obj_player)
if state == states.walk
{
    sprite_index = walkspr
    hsp = 0
}

if state == states.idle
{
    if sprite_index == scaredspr
    {
        if image_index > image_number - 1
            state = states.chase
    }
    else
    {
        sprite_index = spr_treasureguy_idle
        image_speed = 0.35
    }
}

if state != states.idle && state != states.grabbed && state != states.stun && state != states.chase && !running
{
    if (((x < (targetplayer.x + threshold_x)) && (x > (targetplayer.x - threshold_x))) && ((y < (targetplayer.y + threshold_y)) && (y > (targetplayer.y - threshold_y))))
    {
        state = states.idle
        image_index = 0
        sprite_index = scaredspr
        scaredbuffer = scared_max
		
        if (x != targetplayer.x)
            image_xscale = sign((x - targetplayer.x))
    }
}
if (state == states.chase)
{
    image_speed = 0.5
    if (hsp != 0)
        sprite_index = spr_treasureguy_escape
    else
        sprite_index = spr_treasureguy_escape
    if (runmovespeed < runmovespeed_max)
        runmovespeed += accel
    else
        runmovespeed = runmovespeed_max
    hsp = (image_xscale * runmovespeed)	
    if grounded
    {
        if scr_solid((x + sign(hsp)), y)
        {
            if (!jumped)
            {
                vsp = -9
                jumped = 1
            }
            else
            {
                runmovespeed = 0
                image_xscale *= -1
                jumped = 0
            }
        }
        else
            jumped = 0
    }
    if (distance_to_object(targetplayer) > idle_threshold)
        state = states.walk
}

//Rage
//scr_ragecheck()

if state != states.grabbed
depth = 0


if state != states.stun 
thrown= false

if boundbox = false
{
with instance_create(x,y,obj_baddiecollisionbox)
{
sprite_index = other.sprite_index
mask_index = other.sprite_index
baddieID = other.id
other.boundbox = true
}
}
