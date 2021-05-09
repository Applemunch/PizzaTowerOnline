var _obj = other.id
if state != states.stun
{
    can_flash = true
    can_flash_count = can_flash_max
    state = states.stun
    stunned = 15
    hsp = sign(x - _obj.x) * 1
    if x != _obj.x
        image_xscale = (-sign((x - _obj.x)))
    inv_timer = inv_max
    invincible = true
    vsp = -5
    hp -= 1
    if hp <= 0
        instance_destroy()
}