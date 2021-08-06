if vsp < 40
    vsp += grav;

if scr_solid(x + hsp, y + vsp)
	instance_destroy();
else
{
	x += floor(hsp);
	y += floor(vsp);
}