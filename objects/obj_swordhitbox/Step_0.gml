/*
if check_bysync()
{
	if !global.pvp
		instance_destroy();
	exit;
}
*/

image_xscale = playerid.xscale
x = playerid.x
y = playerid.y

if playerid.state != states.knightpepattack && playerid.state != states.finishingblow && (playerid.state != states.cotton or playerid.sprite_index != playerid.spr_cotton_attack)
	instance_destroy()
