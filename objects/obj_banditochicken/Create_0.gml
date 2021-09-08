event_inherited();

grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 0
state = states.idle
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
idlespr = spr_banditochicken_sleep
fallspr = spr_slimefall
stunfallspr = spr_banditochicken_stun
walkspr =spr_banditochicken_chase
turnspr = spr_slimeturn
recoveryspr = spr_slimerecovery
grabbedspr = spr_banditochicken_stun
scaredspr = spr_banditochicken_scared

image_xscale = -1
hp = 2
slapped = false
grounded = true
birdcreated = false
boundbox = false
spr_dead = spr_banditochicken_dead
important = false

heavy = false
depth =0

paletteselect = 0
spr_palette = palette_cheeseslime

grabbedby = 0
momentum = 5

hitboxcreate = false
image_speed = 0.35
steppy = 0

stuntouchbuffer = 0
activated = false
projectileID = obj_null

bonebuffer = 30

if global.gameplay != 0
{
	movespeed = 12
	bonebuffer = 100
}