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
    case states.rage: scr_enemy_rage (); break;
}
scr_scareenemy();

if state = states.stun && stunned > 100 && birdcreated = false
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

var player = instance_nearest(x,y,obj_player1);
if global.gameplay == 0
{
	if state = states.walk && sprite_index == walkspr
	if ((player.x > x - 400) && (player.x < x + 400)) && (y <= player.y+60 && y >= player.y- 60)
	{
		state = states.idle
		sprite_index = spr_indiancheese_howl
		if x != player.x
			image_xscale = -sign(x - player.x)
		scaredbuffer = 100
		jumptimer = 20	
		vsp = -5
	}
	
	//Jump
	if jumptimer > 0 && state == states.idle && grounded
		jumptimer --

	if jumptimer = 0 && state == states.idle && grounded
	{
		movespeed = 4
		vsp = -11
		sprite_index = spr_indiancheese_jump
		image_index = 0
		state = states.walk
		jumptimer = 20
		instance_create(x,y,obj_highjumpcloud2)
	}
		
	if grounded && sprite_index == spr_indiancheese_jump && vsp > 0
	{
		movespeed = 1
		instance_create(x,y,obj_landcloud)
			sprite_index = spr_indiancheese_walk
	}
}
else
{
	if global.stylethreshold >= 3 && ragecooldown > 0
		ragecooldown--;
	if state == states.walk && sprite_index == walkspr && sprite_index != spr_indiancheese_scared && global.stylethreshold >= 3 && ragecooldown == 0
	{
		if player.x > x - 400 && player.x < x + 400 && y <= player. y + 60 && y >= player.y - 60
	    {
	        image_xscale = -sign(x - player.x);
	        state = states.rage;
	        sprite_index = spr_indiancheese_howl;
	        image_index = 0;
	        shot = 0;
	        ragedash = 50;
	        hsp = 0;
	        flash = true;
	        alarm[4] = 5;
			
			with instance_create(x, y, obj_enemyafterimage)
			{
				parent = other.id;
				sprite_index = other.sprite_index;
				image_index = other.image_index;
				image_xscale = other.image_xscale;
			}
	    }
	}
	
	if state == states.walk && grounded && state != states.rage
	&& place_meeting(x + image_xscale * 10, y, obj_solid) 
	&& !place_meeting(x + image_xscale * 10, y - 100, obj_solid)
	{
	    vsp = -11
	    sprite_index = spr_indiancheese_jump
	    image_index = 0
	    state = states.charge
	    instance_create(x, y, obj_highjumpcloud2)
	}
	
	if sprite_index == spr_indiancheese_land && floor(image_index) == image_number - 1
		sprite_index = walkspr
}

if !grounded && sprite_index == spr_indiancheese_jump && floor(image_index) = image_number -1
	image_speed = 0
else if image_speed = 0
	image_speed = 0.35

if hitboxcreate = false && state = states.walk
{
	hitboxcreate = true
	with instance_create(x,y,obj_forkhitbox)
		ID = other.id
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
		mask_index = sprite_index
		baddieID = other.id
		other.boundbox = true
	}
}


