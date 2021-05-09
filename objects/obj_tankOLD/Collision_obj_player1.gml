/// @description
var baddie = id
var player = other.id

if state != states.chase
{
    with other.id
    {
        if instakillmove == 1 && baddie.state != states.grabbed && baddie.thrown == false && !baddie.invincible
        {
            if state == states.mach3 && sprite_index != spr_mach3hit && (character == "P" or character == "V" or (character == "N" && noisetype == 1))
            {
                state = states.bump
                sprite_index = spr_hitwall
                scr_soundeffect(sfx_groundpound)
                scr_soundeffect(sfx_bumpwall)
                hsp = 2.5
                vsp = -3
                image_speed = 0.35
                mach2 = 0
                image_index = 0
                instance_create(x - 10, y + 10, obj_bumpeffect)
				
                with baddie
                {
                    can_flash = 1
                    can_flash_count = can_flash_max
                    state = states.stun
                    stunned = 30
                    hsp = sign(x - player.x) * 2
					
                    if x != player.x
                        image_xscale = (-sign((x - player.x)))
					
                    inv_timer = inv_max
                    invincible = true
                    vsp = -5
					
                    hp -= 3
                    if hp <= 0
                        instance_destroy()
                }
				
                instance_create(x, y, obj_slapstar)
                instance_create(x, y, obj_baddiegibs)
                with obj_camera
                {
                    shake_mag = 20
                    shake_mag_acc = (40 / room_speed)
                }
            }
            else if state == states.mach2 && grounded
            {
                state = states.grab
                with baddie
                {
                    state = states.grabbed
                    if player.object_index == obj_player1
                        grabbedby = 1
                    else
                        grabbedby = 2
                }
            }
            else if state == states.freefall && freefallsmash < 11
            {
                with baddie
                {
                    if state != states.grabbed
                    {
                        state = states.grabbed
                        if player.object_index == obj_player1
                            grabbedby = 1
                        else
                            grabbedby = 2
                    }
                }
            }
            else if state == states.freefall && freefallsmash > 10
            {
                with baddie
                {
                    can_flash = true
                    can_flash_count = can_flash_max
                    state = states.stun
                    stunned = 30
                    hsp = sign(x - player.x) * 2
					
                    if x != player.x
                        image_xscale = (-sign((x - player.x)))
					
                    inv_timer = inv_max
                    invincible = true
                    vsp = -5
					
                    hp -= 3
                    if hp <= 0
                        instance_destroy()
                }
            }
        }
        if y < other.y && attacking == false && sprite_index != spr_player_mach2jump
		&& ((state == states.boots && vsp > 0) or state == states.jump or state == states.mach1 or state == states.grab)
		&& vsp > 0 && other.vsp >= 0 && sprite_index != spr_stompprep
        {
            scr_soundeffect(sfx_stompenemy)
            image_index = 0
            if key_jump2
            {
                instance_create(x, y + 50, obj_stompeffect)
                stompAnim = true
                vsp = -14
                if state == states.jump
                    sprite_index = spr_stompprep
            }
            else
            {
                instance_create(x, y + 50, obj_stompeffect)
                stompAnim = 1
                vsp = -9
                if state == states.jump
                    sprite_index = spr_stompprep
            }
        }
        if y >= other.y && other.thrown == false && other.stuntouchbuffer == 0 && other.vsp > 0 && state != states.bump && state != states.punch && state != states.tackle && state != states.superslam && state != states.pogo && state != states.machslide && state != states.freefall && state != states.mach2 && state != states.handstandjump && state != states.hurt && other.state != states.chase
        {
            scr_soundeffect(sfx_bumpwall)
			
            if state != states.bombpep && state != states.mach1 && state != states.crouchslide && state != states.machroll && state != states.mach2 && state != states.mach3 && state != states.revolver && state != states.dynamite && state != states.climbwall
                movespeed = 0
			
            var _xs = sign(x - baddie.x)
            if floor(_xs) == 0
                _xs = xscale
			
            hsp = 3 * _xs
            state = 80
            xscale = -_xs
            sprite_index = spr_bump
            vsp = -4
        }
    }
}
else
{
    with other.id
    {
        if state != states.stunned
        {
            state = states.stunned
            sprite_index = spr_squished
            image_index = 0
        }
    }
}