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


//Chargehitbox
if  hitboxcreate = false && (state = states.charge) && obj_player.state != states.mach3 && obj_player.state != states.mach2
{
hitboxcreate = true
with instance_create(x,y,obj_forkhitbox)
{
sprite_index = spr_player_mask
ID = other.id
}
}


if attack == false
sprite_index = spr_pizzaboy

if attack == false && state != states.grabbed && state != states.stun && !thrown
{
state = states.idle
roaming = false
}

if state != states.idle
	roaming = true

//Charge
if (x != obj_player.x && ((obj_player.x > x - 200) && (obj_player.x < x + 200)) && obj_player.y = y)
or (obj_player1.sprite_index == obj_player1.spr_taunt && state != states.pizzagoblinthrow && ((obj_player1.x > x - 400) && (obj_player1.x < x + 400)) && (y <= obj_player1.y+20 && y >= obj_player1.y- 20))
{
if (state = states.walk or state = states.idle) 
{
if sprite_index = spr_pizzaboy
instance_create(x,y,obj_balloonpop)

image_xscale = -sign(x - obj_player.x)
roaming = true

attack = true
vsp = -11
scr_soundeffect(sfx_enemyprojectile)
image_index = 0
image_xscale = -sign(x - obj_player.x)
state = states.charge
}
}


scr_scareenemy();

//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}



if state != states.grabbed
depth = 0



if state != states.stun
thrown = false

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

