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
flash = false

landspr = spr_slimebounce
idlespr = spr_slimeidle
fallspr = spr_slimefall
stunfallspr = spr_slimestun
walkspr = spr_slimemove
turnspr = spr_slimeturn
recoveryspr = spr_slimerecovery
grabbedspr = spr_slimegrabbed
scaredspr = spr_slime_scared
ragespr = spr_cheeseslime_rage

//image_xscale = -1
hp = 1
slapped = false
grounded = true
birdcreated = false
boundbox = false
spr_dead = spr_slimedead
important = false

heavy = false
depth = 0

if string_startswith(room_get_name(room), "chateau")
	paletteselect = 1
else
	paletteselect = 0;
spr_palette = palette_cheeseslime

if global.snickrematch
{
	landspr = spr_slimemove_re
	idlespr = spr_slimemove_re
	fallspr = spr_slimemove_re
	stunfallspr = spr_slimestun_re
	walkspr = spr_slimemove_re
	turnspr = spr_slimemove_re
	recoveryspr = spr_slimemove_re
	grabbedspr = spr_slimegrabbed_re
	scaredspr = spr_slimestun_re
	spr_dead = spr_slimedead_re
	ragespr = spr_cheeseslime_rage_re
}

sprite_index = walkspr

grabbedby = 0
stuntouchbuffer = 0
scaredbuffer = 0