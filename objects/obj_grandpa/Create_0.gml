image_speed = 0.35
depth = 0

state = states.idle
flash = false
important = false
spr_dead = spr_grandpa_dead
spr_palette = palette_cheeseslime
paletteselect = 0
grounded = true
hsp = 0
vsp = 0
hp = 1
groundpound = false
invincible = false
parryable = false
thrown = false
sugaryenemy = false

with obj_player1
	if character == "S" instance_destroy(other.id, false);