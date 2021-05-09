var _dir = point_direction(x, y, 146, 109);
hsp = lengthdir_x(16, _dir);
vsp = lengthdir_y(16, _dir);
x += hsp;
y += vsp;

outofx = x < 238;
outofy = y < 159;
if outofx && outofy
{
    with obj_camera
        collect_shake += 10;
	instance_destroy();
}