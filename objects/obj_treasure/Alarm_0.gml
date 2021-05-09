obj_player.sprgot = -1;

if global.gameplay == 0
{
	obj_player.state = states.normal
	with instance_create(x,y,obj_smallnumber)
		number = "1000"
	global.collect +=  1000
	instance_destroy()
}
else
{
	if !instance_exists(obj_endlevelfade)
	    instance_create(x, y, obj_endlevelfade);
}