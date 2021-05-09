scr_initenemy()

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

idlespr = spr_pizzard_walk
stunfallspr = spr_pizzard_stun
walkspr =spr_pizzard_walk
stunspr = spr_pizzard_stun
grabbedspr = spr_pizzard_stun
scaredspr = spr_pizzard_scared
image_xscale = -1
flash = false
slapped = false
birdcreated = false
boundbox = false
spr_dead = spr_pizzard_dead
important = false
heavy = true
depth =0

grabbedby= 0

if string_startswith(room_get_name(room), "chateau")
	paletteselect = 1
else
	paletteselect = 0;
spr_palette = palette_pizzard
stuntouchbuffer = 0