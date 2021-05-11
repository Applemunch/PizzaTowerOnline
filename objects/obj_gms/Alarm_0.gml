/// @description teleport player
var keeptrying = false;
with obj_otherplayer
	if playerid == other.__user keeptrying = true;

if keeptrying
{
	var xx = gms_other_get_real(__user, "x");
	var yy = gms_other_get_real(__user, "y");

	if !(xx == 0 && yy == 0)
	{
		obj_player1.state = states.normal;
		obj_player1.targetDoor = "none";
		obj_player1.x = xx;
		obj_player1.y = yy;
	}
	else
		alarm[0] = 5;
}