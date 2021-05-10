scr_initenemy()

grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 0
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
hp = 3
hitboxcreate = false
grounded = true

idlespr = spr_fencer
stunfallspr = spr_fencer_stun
walkspr =spr_fencer
grabbedspr = spr_fencer_stun
scaredspr = spr_fencer_scared
//image_xscale = -1
flash = false
slapped = false
birdcreated = false
boundbox = false
spr_dead = spr_fencer_dead
important = false
heavy = false
depth =0
charging = false

grabbedby = 0
stuntouchbuffer = 0

if global.snickrematch
{
	idlespr = spr_fencer_re
	stunfallspr = spr_fencer_stun_re
	walkspr = spr_fencer_re
	grabbedspr = spr_fencer_stun_re
	scaredspr = spr_fencer_stun_re
	spr_dead = spr_fencer_dead_re
	
	spr_chargestart = spr_fencer_chargestart_re
	spr_charge = spr_fencer_charge_re
	sprite_index = walkspr;
}