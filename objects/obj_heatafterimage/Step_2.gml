if room == rank_room
    visible = false;

var hsp = 0, vsp = 0;
if instance_exists(obj_player1)
{
	hsp = obj_player1.hsp;
	vsp = obj_player1.vsp - 1;
	
	if obj_player1.x == obj_player1.xprevious
		hsp = 0;
	if obj_player1.y == obj_player1.yprevious
		vsp = 0;
}

x += Vspeed + hsp;
y += Hspeed + vsp;

if !visible && surface_exists(surf)
	surface_free(surf);