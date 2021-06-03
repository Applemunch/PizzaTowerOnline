depth = -9999;
instance_destroy(obj_pausefadeout);

img = 0;
xoffset = 0;
yoffset = 0;

spr_idle = -1;
spr_palette = -1;

sel = [0, 0];
selmin = 1;
selmax = 0;

stickpressed = false;
locked = false;

selarray = [];
palname = "";
paldesc = "";

selvert = false;

pizza = spr_pizzacollect1;
if irandom_range(0, 100) >= 80
	pizza = spr_pizzacollect2;
if irandom_range(0, 100) >= 90
	pizza = spr_pizzacollect3;
pizzasurf = -1;