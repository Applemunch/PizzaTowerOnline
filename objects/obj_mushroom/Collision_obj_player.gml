if other.vsp > 0 && other.cutscene == false && other.state != states.freefall && other.state != states.freefallprep
{
    sprite_index = spr_bigmushroom_bounce;
	
    if other.state == states.jump or other.state == states.normal
        other.sprite_index = other.spr_machfreefall;
	
    image_index = 0
    other.vsp = -20
    other.jumpstop = true
}