if !place_meeting(x,y,obj_doorblocked)
with other
{
	if key_up && grounded && (state = states.normal or state = states.mach1 or state = states.mach2 or state == states.pogo or state = states.mach3 or state = states.Sjumpprep) 
	&& y = other.y + 50 && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
	{
		lastroom = room
	
		scr_soundeffect(sfx_door)

		obj_camera.chargecamera = 0
		if ds_list_find_index(global.saveroom, other.id) == -1
			ds_list_add(global.saveroom, other.id)
		
		sprite_index = spr_lookdoor
		
		targetDoor = other.targetDoor
		targetRoom = other.targetRoom
		
		image_index = 0		
		state = states.door
		mach2 = 0
		
		doorx = other.x + 50;
		
		other.visited = true
		instance_create(x,y,obj_fadeout)
	}
}