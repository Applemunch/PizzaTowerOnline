scr_initenemy()

taunt_count = 0
taunt_max = 30
taunt_storedgrav = 0.5
taunt_storedstate = 105
taunt_storedmovespeed = 1
taunt_storedhsp = 0
cooldown_max = 50
cooldown_count = cooldown_max
inv_timer = 0
inv_max = 10
parryspr = spr_coolpinea_parry
taunteffect_inst = noone
trail_count = 0
trail_max = 10

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

idlespr = spr_coolpinea_idle
stunfallspr = spr_coolpineastun
walkspr =spr_coolpinea
grabbedspr =spr_coolpineastun
scaredspr =spr_coolpinea_scared
sprite_index = spr_coolpinea
image_xscale = -1
flash = false
slapped = false
birdcreated = false
boundbox = false
spr_dead = spr_coolpinea_dead
sprite_index = spr_coolpinea
important = false
heavy = false
depth =0

paletteselect = 1
spr_palette = palette_forknight
grabbedby = 0
stuntouchbuffer = 0