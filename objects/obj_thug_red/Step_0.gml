if room == rm_editor exit;

var targetplayer = obj_player1;
if bombreset > 0
    bombreset--;
if state == states.walk
{
	if !chasing
	{
		if targetplayer.x > x - 400 && targetplayer.x < x + 400
		&& targetplayer.y <= y + 20 && targetplayer.y >= y - 20
        {
            chasing = true;
			state = states.charge;
			attack_count = attack_max;
			
			if targetplayer.x != x
				image_xscale = sign(targetplayer.x - x);
			sprite_index = walkspr;
			image_index = 0;
			
			bombreset = attackreset;
        }
	}
	else
	{
		state = states.chase;
		sprite_index = walkspr;
		image_index = 0;
	}
}
else if state == states.chase
{
    if abs(targetplayer.x - x) < 64
    {
        if grounded && vsp > -1
            hsp = 0;
        else if !grounded
            hsp = image_xscale * chasespeed;
    }
    else if grounded
    {
        if targetplayer.x != x && grounded
            image_xscale = sign(targetplayer.x - x)
        hsp = image_xscale * chasespeed;
    }
    if bombreset <= 0 && grounded
    {
        if targetplayer.x > x - attackthreshold_x && targetplayer.x < x + attackthreshold_x
		&& targetplayer.y > y - attackthreshold_y && targetplayer.y < y + attackthreshold_y
        {
            state = states.charge;
            hsp = 0;
            attack_count = attack_max;
        }
    }
	
	var inst_front = collision_line(x, y + 25, x + sign(hsp) * 78, y + 25, obj_solid, false, true);
    var inst_up = collision_line(x + sign(hsp) * 96, y + 25, x + sign(hsp) * 96, y - 78 + 50, obj_platform, false, true);
    var inst_down = collision_line(x + sign(hsp) * 16, y, x + sign(hsp) * 16, y + 64, obj_solid, false, true);
    var inst_down2 = collision_line(x + sign(hsp) * 16, y, x + sign(hsp) * 16, y + 64, obj_platform, false, true);
    
	if image_index > image_number - 1
    {
        if sprite_index == spr_shrimp_jump
        {
            sprite_index = spr_shrimp_fall;
            image_index = 0;
        }
        else if sprite_index == spr_shrimp_land
        {
            sprite_index = spr_shrimp_walk;
            image_index = 0;
        }
    }
    if grounded && sprite_index == spr_shrimp_fall
    {
        sprite_index = spr_shrimp_land;
        image_index = 0;
    }
	
    if inst_front != noone or inst_up != noone or (inst_down == noone && inst_down2 == noone)
	{
	    if targetplayer.y <= y + 32 && grounded && state != states.charge
	    {
	        vsp = -11;
	        sprite_index = spr_shrimp_jump;
	        image_index = 0;
	        hsp = image_xscale * chasespeed;
	    }
	}
}

if state == states.charge
{
	bombreset = attackreset;
    if attack_count > 0
    {
        if sprite_index != spr_shrimp_punch
        {
            sprite_index = spr_shrimp_punch;
            image_index = 0;
        }
        attack_count--;
    }
    else
    {
        state = states.punch;
        attackspeed = attackspeed_max;
        hsp = image_xscale * attackspeed;
    }
}
if state == states.punch
{
    if !instance_exists(punchinst)
    {
        punchinst = instance_create(x, y, obj_forkhitbox);
        with punchinst
			ID = other.id;
    }
    if alarm[4] == -1
        alarm[4] = 7;
	
    hsp = image_xscale * attackspeed;
    if attackspeed > 0
        attackspeed -= deccel;
    else
        attackspeed = 0;
	
    if attackspeed == 0
    {
        bombreset = attackreset;
        state = states.walk;
        sprite_index = walkspr;
        image_index = 0;
    }
	
    if place_meeting(x + sign(hsp), y, obj_destructibles)
    {
		with obj_destructibles
		{
			if place_meeting(x - sign(other.hsp), y, other)
				instance_destroy();
		}
    }
}

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
	case states.rage: scr_enemy_rage (); break;
}
if state == states.grabbed or state == states.stun
	chasing = true;

if state = states.stun && stunned > 100 && !birdcreated
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

// Heat attack
if global.stylethreshold >= 3 && ragecooldown <= 0
{
	var player = instance_nearest(x, y, obj_player1);
    if state == states.walk or state == states.charge
    {
        if player.x > x - 400 && player.x < x + 400
		&& player.y <= y + 60 && player.y >= y - 60
        {
            if state != states.rage && ragebuffer <= 0
            {
				shot = false;
                state = states.rage
                sprite_index = spr_shrimp_knife
				
                if player.x != x
                    image_xscale =	-sign(x - player.x);
				
                image_index = 0;
                flash = true;
                alarm[4] = 5;
				
                with instance_create(x, y, obj_enemyafterimage)
				{
					parent = other.id;
					sprite_index = other.sprite_index;
					image_index = other.image_index;
					image_xscale = other.image_xscale;
				}
				ragecooldown = 100;
            }
        }
    }
}
if ragecooldown > 0
	ragecooldown--;

//Scared
scr_scareenemy()

if sprite_index == scaredspr && state == states.idle
	invincible = false;

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