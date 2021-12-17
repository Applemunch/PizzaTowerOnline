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
	case states.rage: scr_enemy_rage (); break;
    // grabbed state here
}
if  state = states.stun && stunned > 100 && birdcreated = false
{
birdcreated = true
with instance_create(x,y, obj_enemybird)
ID = other.id
}

if state != states.stun
birdcreated = false


if state == states.walk && y != ystart && !scr_solid(x, y)
{
	y = Approach(y, ystart, 1);
	if scr_solid(x, y)
	{
		stuck = true;
		y = yprevious;
	}
	else
		stuck = false;
}

if state == states.stun
	grav = 0.5
else 
	grav = 0




//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}

if state != states.grabbed
	depth = 0

//Scared
if state != states.charge
	scr_scareenemy()

//Charge sprite
if sprite_index = spr_chargestart && floor(image_index) = image_number -1
{
	//Chargehitbox
	if  hitboxcreate = false && (state == states.charge)  
	{
		hitboxcreate = true
		with instance_create(x,y,obj_forkhitbox)
			ID = other.id
	}
	sprite_index = spr_charge
	movespeed = 10
}


//Identify the player
var targetplayer = instance_nearest(x, y, obj_player)

//Charge
if ragebuffer > 0
    ragebuffer--;

var treshx = 200, treshy = 50;
if global.gameplay != 0
{
	treshx = 400;
	treshy = 60;
}

if ((targetplayer.x > x - treshx) && (targetplayer.x < x + treshx)) && (y <= targetplayer.y + treshy && y >= targetplayer.y - treshy)
{
	if state != states.rage && ragebuffer <= 0 && global.stylethreshold >= 3
	&& (state == states.walk or state == states.charge)
	{
		state = states.rage
        sprite_index = spr_rage1
		
        if x != targetplayer.x
            image_xscale = (-sign((x - targetplayer.x)))
		
        ragebuffer = 100
        image_index = 0
        image_speed = 0.5
        flash = true
        alarm[4] = 5
		
        with instance_create(x, y, obj_forkhitbox)
		{
	        sprite_index = spr_bighitbox
	        mask_index = spr_bighitbox
	        ID = other.id
		}
	}
	else if x != targetplayer.x && state == states.walk && (y == ystart or stuck)
	{
		image_index = 0
		image_xscale = -sign(x - targetplayer.x)
		
		state = states.charge
		sprite_index = spr_chargestart
	}
}


//Taunt attack
/*
if targetplayer.sprite_index =  targetplayer.spr_taunt && state != states.charge
if ((targetplayer.x > x - 200) && (targetplayer.x < x + 200)) && (y <= targetplayer.y+50 && y >= targetplayer.y- 50)
{
bombreset = 0
if state == states.stun
state = states.walk
stunned = 0
}
*/

if state == states.stun or state == states.walk
{
movespeed = 0
}



if state != states.stun
thrown= false

if boundbox = false
{
with instance_create(x,y,obj_baddiecollisionbox)
{
sprite_index = spr_ancho
mask_index = other.sprite_index
baddieID = other.id
other.boundbox = true
}
}


