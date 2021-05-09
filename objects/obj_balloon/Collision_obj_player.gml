instance_create(x,y,obj_balloonpop)
other.vsp = -14
other.jumpstop = true

if other.state == states.normal
	other.state = states.jump

visible = false
x = -100
y = -100
respawn = 100

if other.state == states.jump
	other.sprite_index = other.spr_machfreefall