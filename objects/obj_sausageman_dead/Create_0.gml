vsp = random_range(-5,-10)
hsp = sign(x - obj_player.x) * random_range(5,10)
grav = 0.4
alarm[0] = 5
cigar= false
stomped = false
if x != obj_player.x
{
image_xscale = -sign(x - obj_player.x)
}



paletteselect = 0
spr_palette = 0
haspalette = false;