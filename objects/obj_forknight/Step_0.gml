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
	case states.rage: scr_enemy_rage (); break;
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


//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}

// Heat attack
var player = instance_nearest(x, y, obj_player1);
if global.stylethreshold >= 3 && ragecooldown == 0 && object_index == obj_forknight
{
    if state == states.walk && instance_exists(player)
    {
        if player.x > x - 400 && player.x < x + 400
		&& player.y <= y + 60 && player.y >= y - 60
        {
            sprite_index = spr_forknight_ragestart
			if global.snickrematch
				sprite_index = spr_forknight_ragestart_re
				
            if player.x != x
                image_xscale = -sign(x - player.x);
				
            image_index = 0;
            flash = true;
            alarm[4] = 5;
			state = states.rage
			ragedash = 50;
				
            with instance_create(x, y, obj_enemyafterimage)
			{
				parent = other.id;
				sprite_index = other.sprite_index;
				image_index = other.image_index;
				image_xscale = other.image_xscale;
			}
        }
    }
}
if ragecooldown > 0
    ragecooldown--;

if hitboxcreate == false && ((state == states.walk && !rematchscare) or state == states.rage)
{
	hitboxcreate = true
	with instance_create(x, y, obj_forkhitbox)
		ID = other.id
}

if state != states.grabbed
	depth = 0

if state != states.stun
	thrown = false

if !boundbox
{
	with instance_create(x,y,obj_baddiecollisionbox)
	{
		sprite_index = spr_forknight_walk
		mask_index = sprite_index
		baddieID = other.id
		other.boundbox = true
	}
}