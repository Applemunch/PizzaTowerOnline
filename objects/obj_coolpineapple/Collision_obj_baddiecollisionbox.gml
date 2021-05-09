if ((state != states.parry) && (state != states.backbreaker))
    return;

var my_id = id
var other_baddie = other.id
var can_parry = 0
with (other_baddie)
{
    if (instance_exists(baddieID) && ((baddieID.thrown) && (baddieID != other.id)))
    {
        var _maxhsp = abs(baddieID.hsp)
        var _dir = sign(baddieID.hsp)
        if (x != my_id.x)
            _dir = sign((x - my_id.x))
        baddieID.hsp = (_maxhsp * _dir)
        can_parry = 1
    }
}
if (can_parry && ((state != states.parry) && (other.baddieID != id)))
{
    sprite_index = parryspr
    movespeed = 8
    state = states.parry
    image_index = 0
}


