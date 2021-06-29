if room == rm_editor exit;

switch (state)
{
    case states.idle: grav = 0.5; scr_enemy_idle (); break;
    case states.charge: grav = 0.5; scr_enemy_charge (); break;
    case states.turn: grav = 0.5; scr_enemy_turn (); break;
    case states.walk: grav = 0.5; scr_enemy_walk (); break;
    case states.land: grav = 0.5; scr_enemy_land (); break;
    case states.hit: grav = 0.5; scr_enemy_hit (); break;
    case states.stun: grav = 0.5; scr_enemy_stun (); break;
    case states.pizzagoblinthrow: grav = 0.5; scr_pizzagoblin_throw (); break;
    case states.grabbed: grav = 0.5; scr_enemy_grabbed (); break;
}

if  state = states.stun && stunned > 100 && birdcreated = false
{
birdcreated = true
with instance_create(x,y, obj_enemybird)
ID = other.id
}

if state != states.stun
birdcreated = false

// taunt
if (inv_timer > 0)
{
    inv_timer--
    if place_meeting(x, y, obj_player1)
    {
        var player_inst = instance_place(x, y, obj_player1)
        var player_state = player_inst.state
        if player_inst.instakillmove or player_state == states.handstandjump
        {
            scr_hurtplayer(player_inst)
            var abs_hsp = abs(player_inst.hsp)
            if (player_inst.x != x)
                player_inst.hsp = (sign((x - player_inst.x)) * abs_hsp)
            if (state != states.parry)
            {
                sprite_index = parryspr
                movespeed = 8
                state = states.parry
                image_index = 0
            }
        }
    }
}
else
    invincible = 0

if (state == states.walk)
{
    grav = 0.5
    if (cooldown_count > 0)
    {
        cooldown_count--
        if (instance_exists(taunteffect_inst) && (taunteffect_inst.object_index == obj_baddietaunteffect))
        {
            instance_destroy(taunteffect_inst)
            taunteffect_inst = noone
        }
    }
    else
    {
		if point_in_camera(x, y, view_camera[0])
		&& !audio_is_playing(sfx_taunt)
			scr_soundeffect(sfx_taunt);
		
        taunteffect_inst = instance_create(x, y, obj_baddietaunteffect)
        sprite_index = spr_coolpinea_taunt
        image_speed = 0
        image_index = choose(0, 1, 2)
        taunt_count = taunt_max
        taunt_storedstate = state
        taunt_storedmovespeed = movespeed
        taunt_storedhsp = hsp
        state = states.backbreaker
        hsp = 0
        vsp = 0
        grav = 0
    }
}

if state == states.backbreaker
{
    image_speed = 0
    inv_timer = inv_max
    invincible = 1
    killbyenemy = 0
    hsp = 0
    vsp = 0
	
    if taunt_count > 0
        taunt_count--
    else
    {
        sprite_index = walkspr
        invincible = 0
        killbyenemy = 1
        grav = taunt_storedgrav
        state = taunt_storedstate
        hsp = taunt_storedhsp
        cooldown_count = cooldown_max
        movespeed = taunt_storedmovespeed
    }
}
else if state == states.parry
{
	if !audio_is_playing(sfx_parry)
	{
		scr_soundeffect(sfx_parry);
		with instance_create(x, y, obj_parryeffect)
			image_xscale = other.image_xscale
	}
	
    image_speed = 0.35
    if trail_count > 0
        trail_count--
    else
    {
        with instance_create(x, y, obj_afterimage)
        {
            sprite_index = other.sprite_index
            image_xscale = other.image_xscale
        }
        trail_count = trail_max
    }
    if instance_exists(taunteffect_inst) && taunteffect_inst.object_index == obj_baddietaunteffect
    {
        instance_destroy(taunteffect_inst)
        taunteffect_inst = -4
    }
	
    inv_timer = inv_max
    invincible = 1
    killbyenemy = 0
	
    if movespeed > 0
        movespeed -= 0.5
    else
        movespeed = 0
    hsp = movespeed * -image_xscale
	
    if image_index > image_number - 1
    {
        sprite_index = walkspr
        invincible = 0
        killbyenemy = 1
        grav = taunt_storedgrav
        state = taunt_storedstate
        hsp = taunt_storedhsp
        cooldown_count = cooldown_max
        movespeed = taunt_storedmovespeed
    }
}

//Scared
scr_scareenemy()


//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}


/*
if  hitboxcreate = false && (state = states.walk) 
{
hitboxcreate = true
with instance_create(x,y,obj_forkhitbox)
{
	sprite_index = spr_coolpineahitbox
ID = other.id
}
}

*/


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


