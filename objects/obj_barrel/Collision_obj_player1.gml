if place_meeting(x,y-1,other) && other.vsp > 1
{
with (other)
{
state =states.barrel
image_index = 0
sprite_index = spr_player_barrelcrouch
}


instance_destroy()
}