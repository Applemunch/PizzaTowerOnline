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
    case states.grabbed: scr_enemy_grabbed (); break;
	case states.chase: scr_enemy_chase (); break;
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




//Chase
if state = states.walk or state = states.idle
{
//Identify the player
var targetplayer = obj_player1

movespeed = 7

image_xscale = -sign(x - targetplayer.x)
momentum = -image_xscale * (movespeed + 4)

state = states.chase
}




if  hitboxcreate = false && (state = states.chase) 
{
hitboxcreate = true
with instance_create(x,y,obj_minijohn_hitbox)
{
	sprite_index = other.sprite_index
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
mask_index = other.sprite_index
baddieID = other.id
other.boundbox = true
}
}
