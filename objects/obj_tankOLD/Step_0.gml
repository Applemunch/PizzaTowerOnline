if room == rm_editor
    return;

targetplayer = instance_nearest(x, y, obj_player)

if slide_buffer > 0
    slide_buffer--

if can_flash
{
    if flash_count > 0
        flash_count--
    else
    {
        flash_count = flash_max
        flash = !flash
    }
}
else
    flash = false

if can_flash_count > 0
    can_flash_count--
else
    can_flash = false

if inv_timer > 0
    inv_timer--
else
    invincible = false

if state == states.charge
{
    if image_index > image_number - 1
    {
        ram_spd = 0
        sprite_index = spr_tank_charge
        image_index = 0
        state = states.chase
    }
}

if state == states.idle
{
    image_speed = 0.35
	
    if !patrolling
    {
        if collision_line(x, y, targetplayer.x, targetplayer.y, obj_solid, 0, 1) == noone 
		&& ((image_xscale < 0 && targetplayer.x < x) or (image_xscale > 0 && targetplayer.x > x))
		&& targetplayer.y < y + threshold_y && targetplayer.y > y - threshold_y
        {
            bombreset = patrolmax
            patrolling = true
            sprite_index = walkspr
            image_index = 0
            state = states.walk
        }
    }
}
else if state == states.grabbed
{
    var player = asset_get_index("obj_player" + string(grabbedby))
	
    with player
        scr_pummel();
	
    can_flash = true
    can_flash_count = can_flash_max
	
    if x != player.x
        hsp = sign(x - player.x) * 4
    else
        hsp = -image_xscale * 4
	
    vsp = -4
    inv_timer = inv_max
    bombreset -= inv_max
    slide_buffer = slide_max
	
    if bombreset <= 0
        bombreset = 0;
	
    hp--
    state = states.walk
    sprite_index = walkspr
    invincible = true
	
    if hp <= 0
        instance_destroy()
	
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    scr_soundeffect(sfx_killenemy)
    with obj_camera
    {
        shake_mag = 3;
        shake_mag_acc = 3 / room_speed;
    }
}
else if state == states.chase
{
    invincible = true
    if ram_spd < ram_spd_max
        ram_spd += accel
    else
        ram_spd = ram_spd_max
	
    hsp = image_xscale * ram_spd
    if scr_solid(x + sign(hsp), y)
    {
        bombreset = 200
        invincible = false
        sprite_index = spr_tank_hitwall
        image_index = 0
        attackmode = 0
        hsp = -image_xscale * 2
        state = states.stun
        stunned = 30
        vsp = -5
    }
}
switch state
{
    case states.turn:
        scr_enemy_turn()
        break
    case states.walk:
        scr_enemy_walk()
        break
    case states.land:
        scr_enemy_land()
        break
    case states.hit:
        scr_enemy_hit()
        break
    case states.stun:
        scr_enemy_stun()
        break
    case states.pizzagoblinthrow:
        scr_pizzagoblin_throw()
        break
    case states.grabbed:
        scr_enemy_grabbed()
        break
}

if state == states.grabbed && stunned > 100 && birdcreated == 0
{
    birdcreated = true
    with instance_create(x, y, obj_enemybird)
        ID = other.id
}
if state != states.stun
    birdcreated = false

if bombreset > 0
    bombreset--

if state == states.spawn
{
    if floor(image_index) == 5 && bombreset == 0
    {
        bombreset = spawnreset
        with instance_create(x, y - 19, content)
        {
            depth = other.depth - 10
            important = 1
            vsp = -8
            hsp = -other.image_xscale
            state = states.stun
            stunned = 50
        }
    }
    if image_index > image_number - 1
    {
        sprite_index = walkspr
        state = states.walk
    }
}

if state == states.walk && bombreset == 0
{
    if targetplayer.x > x - threshold_x && targetplayer.x < x + threshold_x
	&& targetplayer.y < y + threshold_y && targetplayer.y > y - threshold_y
    {
        attackmode = choose(0, 0, 1, 2, 2, nextattack)
        switch attackmode
        {
            case 0:
                nextattack = 1
                sprite_index = spr_tank_shoot
                image_index = 0
                if x != targetplayer.x
                    image_xscale = (-sign((x - targetplayer.x)))
                state = states.pizzagoblinthrow
                break
			
            case 1:
                nextattack = 2
                if slide_buffer <= 0
                    hsp = 0
                sprite_index = spr_tank_spawnenemy
                image_index = 0
                if x != targetplayer.x
                    image_xscale = -sign(x - targetplayer.x)
                state = states.spawn
                break
			
            case 2:
                nextattack = 0
                if x != targetplayer.x
                    image_xscale = -sign(x - targetplayer.x)
                sprite_index = spr_tank_chargestart
                image_index = 0
                ram_count = ram_max
                state = states.charge
                if slide_buffer <= 0
                    hsp = 0
                break
        }
        
    }
}
if state == states.stun
{
    if sprite_index == spr_tank_hitwall && image_index > image_number - 1
        image_index = image_number - 1
	
    if sprite_index == spr_tank_stunstart && image_index > image_number - 1
    {
        sprite_index = spr_tank_stun
        image_index = 0
    }
    if sprite_index != spr_tank_hitwall && sprite_index != spr_tank_stunstart && sprite_index != spr_tank_stun
    {
        sprite_index = spr_tank_stunstart
        image_index = 0
    }
}

if flash == true && alarm[2] <= 0
    alarm[2] = 0.15 * room_speed

if state != states.grabbed
    depth = 0
if state != states.stun
    thrown = false

if boundbox == false
{
    with instance_create(x, y, obj_baddiecollisionbox)
    {
        sprite_index = other.sprite_index
        mask_index = sprite_index
        baddieID = other.id
        other.boundbox = true
    }
}