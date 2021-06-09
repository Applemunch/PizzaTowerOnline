if (obj_player1.state = states.normal or obj_player1.state = states.mach1 or obj_player1.state == states.pogo or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.Sjumpprep)  && sprite_index = spr_doorkey && obj_player1.key_up && obj_player1.grounded && global.key_inv == true && place_meeting(x,y,obj_player1) 
{
	ds_list_add(global.saveroom, id) 

	obj_player1.state = states.victory
	obj_player1.image_index = 0
	obj_player1.keydoor = true
	
	obj_player1.doorx = x + 50;
	
	image_index = 0
	sprite_index = spr_doorkeyopen
	if check_sugary()
		sprite_index = spr_door_ss
	image_speed = 0.35
	instance_create(x+50,y+50,obj_lock)
	global.key_inv = false
}

if floor(image_index) == 2
	image_speed = 0

if floor(obj_player1.image_index) = obj_player1.image_number - 1 && obj_player1.state = states.victory && place_meeting(x, y, obj_player1)
{
	with obj_player1
	{
		obj_player1.targetDoor = other.targetDoor
		obj_player1.targetRoom = other.targetRoom
		
		if !instance_exists(obj_fadeout)
		{
			scr_soundeffect(sfx_door)
			instance_create(x,y,obj_fadeout)
		}
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