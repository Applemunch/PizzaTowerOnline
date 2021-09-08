event_inherited();

grav = 0.5;
hsp = 0;
vsp = 0;

state = states.walk
stunned = 0
alarm[0] = 150
roaming = true
collectdrop = 5
flying = false
straightthrow = false
cigar = false
cigarcreate = false
stomped = false
shot = false
thrown = false
reset = false
bombreset = 0
hp = 2
grounded = true

idlespr = spr_pizzagoblin_idle
stunfallspr = spr_pizzagoblin_stun
walkspr =spr_pizzagoblin_walk
stunspr = spr_pizzagoblin_stun
grabbedspr = spr_pizzagoblin_stun
scaredspr = spr_pizzagoblin_scared

image_xscale = -1
flash = false
slapped = false
birdcreated = false
boundbox = false
spr_dead = spr_pizzagoblin_dead
important = false
heavy = true
depth = 0

grabbedby = 0
stuntouchbuffer = 0

if global.snickrematch
{
	idlespr = spr_pizzagoblin_walk_re
	stunfallspr = spr_pizzagoblin_stun_re
	walkspr = spr_pizzagoblin_walk_re
	grabbedspr = spr_pizzagoblin_stun_re
	scaredspr = spr_pizzagoblin_stun_re
	spr_dead = spr_pizzagoblin_dead_re
}
sprite_index = walkspr;