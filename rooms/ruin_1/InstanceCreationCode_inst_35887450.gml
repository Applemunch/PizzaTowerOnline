targetRoom = medieval_10;

if global.snickrematch && global.snickchallenge
{
	instance_destroy();
	instance_create(x, y, obj_doorblocked);
}