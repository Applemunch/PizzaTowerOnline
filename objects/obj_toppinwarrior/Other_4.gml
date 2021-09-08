visible = true
global.toppinwarriorattackcountdown = 1000

if room == rank_room or room == timesuproom
	instance_destroy(id, false)

space = 0;
ds_queue_clear(followQueue);
if instance_exists(playerid)
{
	dir = obj_player1.xscale
	x = playerid.x;
	y = playerid.y;
}