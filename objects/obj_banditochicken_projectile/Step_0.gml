if (vsp < 12) vsp += grav;

x += hsp;
y += floor(vsp);

if scr_solid(x,y)
	instance_destroy()