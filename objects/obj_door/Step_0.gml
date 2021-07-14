if visited && sprite_index != spr_pepperdoor
{
	sprite_index = spr_doorvisited
	if check_sugary()
		sprite_index = spr_door_ss
}

if instance_exists(obj_noisesatellite)
	sprite_index = spr_doorblocked

if targetRoom != room
{
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
	if place_meeting(x,y,obj_doorANY)
		targetDoor = instance_place(x, y, obj_doorANY).door
}