if global.panic or global.snickchallenge
{
	global.seconds -= 1
	global.collect = max(global.collect - 5, 0);
}
else if global.timedgate or global.miniboss
	global.seconds -= 1

if global.seconds < 0
{
	global.seconds += 59;
	global.minutes -= 1;
}

alarm[1] = 60