
if global.panic = true or global.snickchallenge = true or global.miniboss = true
{
global.seconds -= 1
if global.collect >= 5
global.collect -= 5

if instance_exists(obj_player2)
{
if global.collectN >= 5
global.collectN -= 5
}

if global.seconds < 0
{
global.seconds = 59
global.minutes -= 1

}
}
alarm[1] = 60

