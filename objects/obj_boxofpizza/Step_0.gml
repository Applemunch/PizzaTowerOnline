with (obj_player1)
{
	if sign(other.image_yscale) == 1
	{
		if ((key_down && !place_meeting(x,y+1,obj_destructibles)  && place_meeting(x,y+1,other) && ((state = states.crouch or (character = "S" && scr_transformationcheck())) or state = states.machroll) )
		or ((state = states.crouchslide or state = states.freefall or state = states.freefallland) && !place_meeting(x,y+1,obj_destructibles) && place_meeting(x,y+1,other)))
		&& !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
		&& ((obj_player1.spotlight = true && object_index = obj_player1) or (obj_player1.spotlight = false && object_index = obj_player2))
		{
			other.depth = -10
			scr_soundeffect(sfx_box)
			obj_player1.box = true
			mach2 = 0
			obj_camera.chargecamera = 0
			
			doorx = other.x
			
			obj_player1.targetDoor = other.targetDoor
			obj_player1.targetRoom = other.targetRoom
			
			sprite_index = spr_downpizzabox
			image_index = 0
			state = states.door
		}
	}
	
	if sign(other.image_yscale) == -1
	{
		if ((key_up && !place_meeting(x,y-1,obj_destructibles) && place_meeting(x,y-10,other) && (state = states.normal or state = states.pogo or state = states.jump or  state = states.mach1 or state = states.mach2 or state = states.mach3 or state = states.Sjumpprep)) or ((state = states.Sjump or state = states.Sjumpland)  && !place_meeting(x,y-1,obj_destructibles) && place_meeting(x,y-1,other))) 
		&& !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
		&& ((obj_player1.spotlight = true && object_index = obj_player1) or (obj_player1.spotlight = false && object_index = obj_player2))
		{
			scr_soundeffect(sfx_box)
			other.depth = -10
			obj_player1.box = true
			obj_player2.box = true
			other.depth = -8
			mach2 = 0
			obj_camera.chargecamera = 0
			
			doorx = other.x
			x = doorx;
			
			y = other.y +24
			obj_player1.targetDoor = other.targetDoor
			obj_player1.targetRoom = other.targetRoom
			obj_player2.targetDoor = other.targetDoor
			obj_player2.targetRoom = other.targetRoom
			
			sprite_index = spr_uppizzabox
			image_index = 0
			state = states.door
		}
	}
}


if place_meeting(x,y+1,obj_doorA) or place_meeting(x,y-1,obj_doorA)
targetDoor = "A"
if place_meeting(x,y+1,obj_doorB) or place_meeting(x,y-1,obj_doorB)
targetDoor = "B"
if place_meeting(x,y+1,obj_doorC) or place_meeting(x,y-1,obj_doorC)
targetDoor = "C"
if place_meeting(x,y+1,obj_doorD) or place_meeting(x,y-1,obj_doorD)
targetDoor = "D"
if place_meeting(x,y+1,obj_doorE) or place_meeting(x,y-1,obj_doorE)
targetDoor = "E"
