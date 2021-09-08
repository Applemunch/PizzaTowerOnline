event_inherited();

grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 1
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

idlespr = spr_noisey_walk
stunfallspr = spr_noisey_stun
walkspr =spr_noisey_walk
grabbedspr = spr_noisey_stun
scaredspr = spr_noisey_stun

//image_xscale = -1
flash = false
slapped = false
birdcreated = false
boundbox = false
spr_dead = spr_noisey_dead
important = false
heavy = false
depth = 0

if global.gameplay != 0
{
	idlespr = spr_noisey_walk_NEW;
	stunfallspr = spr_noisey_stun_NEW;
	walkspr = spr_noisey_walk_NEW;
	grabbedspr = spr_noisey_stun_NEW;
	scaredspr = spr_noisey_scared_NEW;
	spr_dead = spr_noisey_dead_NEW;
}

paletteselect = 0
spr_palette = palette_forknight
grabbedby = 0