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
hp = 2
hitboxcreate = false
grounded = true

idlespr = spr_forknight_idle
stunfallspr = spr_forknight_stun
walkspr =spr_forknight_walk
grabbedspr = spr_forknight_grabbed
scaredspr = spr_forknight_scared
turnspr = spr_forknight_turn
image_xscale = -1
flash = false
slapped = false
birdcreated = false
boundbox = false
spr_dead = spr_forknight_dead
important = false
heavy = false
depth = 0

if string_startswith(room_get_name(room), "chateau")
	paletteselect = 1
else
	paletteselect = 0;
spr_palette = palette_forknight
grabbedby = 0
stuntouchbuffer = 0

ragedash = 0
ragecooldown = 0

if global.snickrematch
{
	idlespr = spr_forknight_walk_re
	stunfallspr = spr_forknight_grabbed_re
	walkspr = spr_forknight_walk_re
	grabbedspr = spr_forknight_grabbed_re
	scaredspr = spr_forknight_grabbed_re
	spr_dead = spr_forknight_dead_re
	turnspr = spr_forknight_turn_re
}
sprite_index = walkspr