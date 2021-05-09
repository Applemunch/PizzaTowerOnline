scr_initenemy()

fadeout_time = 0.05;
fadein_time = 0.05;
threshold_x = 400;
threshold_y = 20;
targetplayer = noone;
walked = false;
accel = 0.1;
deccel = 0.1;
deccel_threshold = 0.2;
movespeed = 2.5;
pos = 0;
attack_offset = 16;
ground_check = 128;
attacking = false;

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
hp = 3
grounded = true

idlespr = spr_pickle_walk
stunfallspr = spr_pickle_stun
walkspr =spr_pickle_walk
stunspr = spr_pickle_stun
grabbedspr = spr_pickle_stun
scaredspr = spr_pickle_stun
image_xscale = -1
flash = false
slapped = false
birdcreated = false
boundbox = false
spr_dead = spr_pickle_dead
important = false
heavy = true
depth =0

grabbedby= 0

paletteselect = 1
spr_palette = palette_pizzard
stuntouchbuffer = 0
fade = false