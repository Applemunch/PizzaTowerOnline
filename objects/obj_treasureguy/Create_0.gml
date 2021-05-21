scr_initenemy()

threshold_x = 400
threshold_y = 96
targetplayer = noone
running = 0
scared_max = 50
runmovespeed = 0
runmovespeed_max = 8
accel = 0.25
jumped = 0
idle_threshold = 800

content_arr = [obj_pizzaslice, obj_pizzaslice, obj_pizzaslice]
content_var = ds_map_create();
count = 30;

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
flash = false
landspr = spr_slimebounce
idlespr = spr_treasureguy_idle
fallspr = spr_slimefall
stunfallspr = spr_treasureguy_stun
walkspr = spr_treasureguy_idle
turnspr = spr_slimeturn
recoveryspr = spr_treasureguy_stun
grabbedspr = spr_treasureguy_stun
scaredspr = spr_treasureguy_escapestart

image_xscale = -1
hp =1
slapped = false
grounded = true
birdcreated = false
boundbox = false
spr_dead = spr_treasureguy_dead
important = false

heavy = false
depth =0

spr_palette = palette_cheeseslime
sprite_index = spr_slimemove

grabbedby = 0
stuntouchbuffer = 0
scaredbuffer = 0