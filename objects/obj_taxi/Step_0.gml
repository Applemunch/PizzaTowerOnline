x += hsp

if hsp != 0
{
	dust += 1
	if dust >= 40
	{
		dust = 0
		instance_create(x,y+43,obj_cloudeffect)
	}
}

if place_meeting(x,y,obj_doorA)
	targetDoor = "A"
if place_meeting(x,y,obj_doorB)
	targetDoor = "B"
if place_meeting(x,y,obj_doorC)
	targetDoor = "C"
if place_meeting(x,y,obj_doorD)
	targetDoor = "D"
if place_meeting(x,y,obj_doorE)
	targetDoor = "E"