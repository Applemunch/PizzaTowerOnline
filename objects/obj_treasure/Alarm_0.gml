obj_player.sprgot = -1;

if global.gameplay == 0
{
	obj_player.state = states.normal
	with instance_create(x, y, obj_smallnumber)
		number = "2000"
	global.collect += 2000
	instance_destroy()
}
else
{
	if !instance_exists(obj_endlevelfade)
	    instance_create(x, y, obj_endlevelfade);
}