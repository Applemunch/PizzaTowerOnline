if !place_meeting(x,y,obj_doorblocked)
with (other)
{
	if key_up && other.sprite_index = spr_doorvisited && grounded && (state = states.normal or state = states.mach1 or state = states.mach2 or state == states.pogo or state = states.mach3 or state = states.Sjumpprep) 
	&& y = other.y + 50 && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
	&& ((obj_player1.spotlight = true && object_index = obj_player1) or (obj_player1.spotlight = false && object_index = obj_player2))
	{
		obj_player1.lastroom = room
	
		scr_soundeffect(sfx_door)

		obj_camera.chargecamera = 0
		ds_list_add(global.saveroom, id)

		obj_player1.sprite_index = obj_player1.spr_lookdoor

		obj_player1.targetDoor = other.targetDoor
		obj_player1.targetRoom = other.targetRoom
		obj_player1.image_index = 0		
		obj_player1.state = states.door		
		obj_player1.mach2 = 0
		
		other.visited = true
		doorx = other.x + 50

		instance_create(x,y,obj_fadeout)
	}

}
