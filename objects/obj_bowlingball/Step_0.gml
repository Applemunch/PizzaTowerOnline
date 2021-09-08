var poo = droprate

if drop
	poo = droprate * 2

if (vsp < poo) vsp += grav;
image_speed = 0

x += hsp;
y += floor(vsp);