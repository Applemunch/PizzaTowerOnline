show = true;
fade = -1; // -1 = nothing, 0 = fade in, 1 = fade out
fadealpha = 0;

depth = -9999;
instance_destroy(obj_pausefadeout);

img = 0;
paletteselect = obj_player1.paletteselect;
character = obj_player1.character;

spr_idle = spr_player_idle;
spr_palette = spr_peppalette;

palettemin = 1;
palettemax = 0;
locked = false;
lockedpal = false;

xoffset = 0;
yoffset = 0;

noisetype = obj_player1.noisetype;
stickpressed = false;

palcolors = ds_list_create();
palsurf = -1;

pizza = spr_pizzacollect1;
if irandom_range(0, 100) >= 80
	pizza = spr_pizzacollect2;
if irandom_range(0, 100) >= 90
	pizza = spr_pizzacollect3;

event_user(0);