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
	case states.chase: scr_enemy_chase (); break;
	case states.rage: scr_enemy_rage (); break;
}


if  state = states.stun && stunned > 100 && birdcreated = false
{
	birdcreated = true
	with instance_create(x,y, obj_enemybird)
		ID = other.id
}

if global.stylethreshold >= 3 && ragecooldown <= 0
{
    var player = instance_nearest(x, y, obj_player1);
    if state == states.chase && instance_exists(player)
    {
        if player.x > x - 400 && player.x < x + 400
		&& player.y <= y + 60 && player.y >= y - 60
        {
            image_xscale = -sign(x - player.x);
            sprite_index = spr_minijohn_rage1;
            image_index = 0;
            vsp = -8;
            flash = true;
            alarm[4] = 5;
            ragecooldown = 100;
            state = states.rage;
			
            with instance_create(x, y, obj_enemyafterimage)
			{
				parent = other.id;
				sprite_index = other.sprite_index;
				image_index = other.image_index;
				image_xscale = other.image_xscale;
			}
			
			with instance_create(x, y, obj_forkhitbox)
			{
				sprite_index = spr_bighitbox
	            mask_index = spr_bighitbox
	            ID = other.id
			}
        }
    }
}
if ragecooldown > 0
    ragecooldown--;

if state != states.stun
	birdcreated = false

//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}


if state != states.chase
	momentum = 0

//Chase
if state == states.walk or state == states.idle
{
	//Identify the player
	var targetplayer = obj_player1

	movespeed = 4
	if global.gameplay == 0
	{
		movespeed = 7
		momentum = -image_xscale * (movespeed + 4)
	}
	image_xscale = -sign(x - targetplayer.x)
	
	state = states.chase
}




if  hitboxcreate = false && (state == states.chase) 
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
