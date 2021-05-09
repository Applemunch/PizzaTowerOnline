


if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) 
for (i = 0; i < array_length_1d(baddieid) -1; i+=1)
if baddieid[i] = -1
{
	refresh --
}

if refresh <= 0 
{
	image_speed = 0.35
	if floor(image_index) = 5
	{
with instance_create(x,y-35,content)
{
	state =states.stun
	stunned = 50
	vsp = -5
	
	var found = false
	
for (i = 0; i < array_length_1d(other.baddieid) -1; i+=1)
if other.baddieid[i] = -1 && found =false
{
other.baddieid[i] = id
found = true
}

important = true
}

refresh = 100
	}

}


//Delete baddie from array
for (i = 0; i < array_length_1d(baddieid) -1; i+=1)
if !instance_exists(baddieid[i])
baddieid[i] = -1

