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


//Scared
scr_scareenemy()

//Identify the player
var targetplayer = instance_nearest(x,y ,obj_player)

//Charge
if x != targetplayer.x && grounded
{
if ((targetplayer.x > x - 400) && (targetplayer.x < x + 400)) && (y <= targetplayer.y+20 && y >= targetplayer.y- 20)
{
if (state = states.walk) && charging = false
{
	with instance_create(x,y,obj_forkhitbox)
	ID = other.id
charging = true
state = states.charge
movespeed = 5
vsp = -7
sprite_index = spr_fencer_chargestart
}
}
}

//Taunt attack
/*
if targetplayer.sprite_index =  targetplayer.spr_taunt && state != states.charge
if  ((targetplayer.x > x - 400) && (targetplayer.x < x + 400)) && (y <= targetplayer.y+20 && y >= targetplayer.y- 20)
{
bombreset = 0
if state = states.stun
state = states.walk
stunned = 0
}
*/

if state = states.stun or state = states.walk
{
charging = false
movespeed = 0
}


//Charge sprite
if sprite_index = spr_fencer_chargestart && floor(image_index) = image_number -1
sprite_index = spr_fencer_charge

//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}



if  hitboxcreate = false && (state = states.walk) 
{
hitboxcreate = true
with instance_create(x,y,obj_forkhitbox)
{
ID = other.id
}
}

if state != states.grabbed
depth = 0


if state != states.stun
thrown= false

if boundbox = false
{
with instance_create(x,y,obj_baddiecollisionbox)
{
sprite_index = other.sprite_index
mask_index = other.mask_index
baddieID = other.id
other.boundbox = true
}
}


