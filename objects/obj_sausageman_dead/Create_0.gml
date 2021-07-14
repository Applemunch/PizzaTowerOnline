vsp = random_range(-5,-10)

var sig = sign(x - obj_player1.x);
if sig == 0
	sig = obj_player1.xscale;
hsp = sig * random_range(5, 10)
if sig != 0
	image_xscale = -sig;

grav = 0.4
alarm[0] = 5
cigar= false
stomped = false

paletteselect = 0
spr_palette = 0
haspalette = false;