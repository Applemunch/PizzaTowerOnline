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

idlespr = spr_pepgoblin
stunfallspr = spr_pepgoblinstun
walkspr =spr_pepgoblin
stunspr =  spr_pepgoblinstun
grabbedspr =  spr_pepgoblinstun
scaredspr = spr_pepgoblin_scared
flash = false
slapped = false
birdcreated = false
boundbox = false
spr_dead = spr_pepgoblin_dead
important = false
heavy = true
depth =0
grabbedby= 0
if string_startswith(room_get_name(room), "chateau")
	paletteselect = 1
else
	paletteselect = 0;
spr_palette = palette_pepgoblin
stuntouchbuffer = 0

if global.snickrematch
{
	idlespr = spr_pepgoblin_re
	stunfallspr = spr_pepgoblinstun_re
	walkspr = spr_pepgoblin_re
	grabbedspr = spr_pepgoblinstun_re
	scaredspr = spr_pepgoblinstun_re
	spr_dead = spr_pepgoblin_dead_re
	sprite_index = walkspr;
}