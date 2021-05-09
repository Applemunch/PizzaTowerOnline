if room == rm_editor exit;

switch (state)
{
    case states.idle: scr_enemy_idle (); break;
    case states.charge: scr_enemy_charge (); break;
    case states.turn: scr_enemy_turn (); break;
    case states.walk: scr_enemy_walk (); break;
    case states.land: scr_enemy_land (); break;
    case states.hit: scr_enemy_hit (); break;
    case states.stun: scr_enemy_stun (); break;
    case states.pizzagoblinthrow: scr_pizzagoblin_throw (); break;
    case states.grabbed: scr_enemy_grabbed (); break;
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


if state != states.grabbed
depth = 0


if state != states.stun
thrown= false



//Scared
scr_scareenemy()


if bombreset > 0
bombreset --

//Identify the player
var targetplayer = instance_nearest(x,y ,obj_player)

//Kick
if x != targetplayer.x && state != states.pizzagoblinthrow && obj_player.state != states.tumble && bombreset = 0  && grounded
{
if ((targetplayer.x > x - 80) && (targetplayer.x < x + 80)) && (y <= targetplayer.y+100 && y >= targetplayer.y- 100)
{
if (state = states.walk) 
{
image_index = 0
sprite_index = spr_pepgoblin_kick
image_xscale = -sign(x - obj_player.x)
state = states.pizzagoblinthrow

}
}
}

//Taunt attack
/*
if targetplayer.sprite_index =  targetplayer.spr_taunt && state != states.pizzagoblinthrow
if ((targetplayer.x > x - 400) && (targetplayer.x < x + 400)) && (y <= targetplayer.y+20 && y >= targetplayer.y- 20)
{
bombreset = 0
if state = states.stun
state = states.walk
stunned = 0
}
*/

if grounded && state = states.pizzagoblinthrow  && floor(image_index) = 3
vsp = -5

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