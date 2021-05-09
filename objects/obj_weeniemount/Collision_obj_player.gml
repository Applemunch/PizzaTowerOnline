
with other
if state = states.handstandjump or state = states.punch
{
state =states.rideweenie	
sprite_index = spr_rideweenie
xscale = other.image_xscale
vsp = -11
jumpstop = true
movespeed = 0
grounded = false
with instance_create(x,y,obj_jumpdust)
image_xscale = other.xscale
instance_destroy(other)
}