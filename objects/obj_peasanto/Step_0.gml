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
    // grabbed state here
}

if state == states.stun && stunned > 100 && birdcreated = false
{
	birdcreated = true
	with instance_create(x,y, obj_enemybird)
		ID = other.id
}

if state != states.stun
	birdcreated = false

//Chargehitbox
if !hitboxcreate && state == states.charge && grounded && obj_player.state != states.mach3 && obj_player.state != states.mach2
{
	hitboxcreate = true
	with instance_create(x, y, obj_forkhitbox)
	{
		sprite_index = spr_player_mask
		ID = other.id
	}
}

//Charge
if state != states.walk && state != states.idle && state != states.grabbed && state != states.hit && (state != states.stun or stunned <= 0) && angry == false && !thrown && hp > 0
{
	grav = 0.5	
	vsp = -5
	image_index = 0
	state = states.charge
	angry = true
	thrown = false
}

if state == states.charge
	movespeed = 4;
if state == states.walk
	movespeed = 1;

if state != states.stun && state != states.grabbed && state != states.idle && state != states.charge && state != states.hit
	angry = false

scr_scareenemy();

//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
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
mask_index = sprite_index
baddieID = other.id
other.boundbox = true
}
}

