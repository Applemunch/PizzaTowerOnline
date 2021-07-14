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


if state == states.walk && y > ystart && !scr_solid(x,y-1)
y--
if state == states.walk && y < ystart && !scr_solid(x,y+1)
y++


if state = states.stun
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
	if  hitboxcreate = false && (state = states.charge)  
	{
		hitboxcreate = true
		with instance_create(x,y,obj_forkhitbox)
			ID = other.id
	}
	sprite_index = spr_charge
	movespeed = 10
}


//Identify the player
var targetplayer = instance_nearest(x,y ,obj_player)


//Charge
if x != targetplayer.x && state != states.charge  && y = ystart
{
	if ((targetplayer.x > x - 200) && (targetplayer.x < x + 200)) && (y <= targetplayer.y+50 && y >= targetplayer.y- 50)
	{
		if (state = states.walk) 
		{
			image_index = 0
			image_xscale = -sign(x - obj_player.x)

			state = states.charge
			sprite_index = spr_chargestart
		}
	}
}


//Taunt attack
/*
if targetplayer.sprite_index =  targetplayer.spr_taunt && state != states.charge
if ((targetplayer.x > x - 200) && (targetplayer.x < x + 200)) && (y <= targetplayer.y+50 && y >= targetplayer.y- 50)
{
bombreset = 0
if state = states.stun
state = states.walk
stunned = 0
}
*/

if state = states.stun or state = states.walk
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


