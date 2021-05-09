if obj_pause.pause
{
	instance_destroy();
	exit;
}

playerid = obj_player1
xscale = playerid.xscale

bumpeffect = false

/*
if check_bysync() && !global.pvp
	instance_destroy();