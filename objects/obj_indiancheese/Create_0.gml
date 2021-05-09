scr_initenemy()

shot = false;

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
hp = 2
hitboxcreate = false
grounded = true

idlespr = spr_indiancheese_walk
stunfallspr = spr_indiancheese_stun
walkspr =spr_indiancheese_walk
grabbedspr = spr_indiancheese_stun
scaredspr = spr_indiancheese_scared
image_xscale = -1
flash = false
slapped = false
birdcreated = false
boundbox = false
spr_dead = spr_indiancheese_dead
important = false
heavy = false
depth = 0
jumptimer = 30
arcprojectiletimer = 25

if global.gameplay != 0
	movespeed = 4