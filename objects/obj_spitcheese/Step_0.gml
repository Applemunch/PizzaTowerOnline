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

if state == states.stun && stunned > 100 && !birdcreated
{
	birdcreated = true
	with instance_create(x,y, obj_enemybird)
		ID = other.id
}

if state != states.stun
	birdcreated = false


//Spit
if bombreset > 0
	bombreset = max(bombreset - 1, 0);

//Throw Bomb at
var player = instance_nearest(x, y, obj_player)
if (player.x > x - 400 && player.x < x + 400 && y <= player.y + 60 && y >= player.y - 60)
or global.gameplay == 0
{
	if (state == states.walk or state == states.idle) && bombreset <= 0
	{
		if global.stylethreshold >= 3
		{
			bombreset = 130;
	        ragedash = 5;
	        state = states.rage;
			
	        sprite_index = spr_spitcheese_rage;
	        if x != player.x
	            image_xscale = -sign(x - player.x);
			
	        ragebuffer = 100;
	        image_index = 0;
	        image_speed = 0.4;
	        flash = true;
	        alarm[4] = 1;
		}
		else if grounded
		{
			if x != player.x && global.gameplay != 0
				image_xscale = -sign(x - player.x);
			throwdir = image_xscale
			
			image_index = 0
			state = states.pizzagoblinthrow
		}
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

if !boundbox
{
	with instance_create(x,y,obj_baddiecollisionbox)
	{
		sprite_index = other.sprite_index
		mask_index = sprite_index
		baddieID = other.id
		other.boundbox = true
	}
}