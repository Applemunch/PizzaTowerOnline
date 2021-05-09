var _tank = id
var _baddie = other.id
with _baddie
{
    if instance_exists(baddieID) && baddieID != other.id
    {
        if baddieID.state == states.stun && baddieID.thrown == true
        {
            with _tank
            {
                if state != states.grabbed && thrown == false && !invincible && state != states.stun
                {
                    can_flash = true
                    can_flash_count = can_flash_max
                    state = states.stun
                    stunned = 30
                    hsp = sign(x - _baddie.x) * 2
                    if x != _baddie.x
                        image_xscale = (-sign((x - _baddie.x)))
                    inv_timer = inv_max
                    invincible = true
                    vsp = -5
                    hp -= 3
                    if hp <= 0
                        instance_destroy()
                }
            }
        }
    }
}