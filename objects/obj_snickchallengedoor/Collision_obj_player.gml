with (other)
{
	if key_up && (state = states.normal or state = states.mach1 or state = states.mach2 or state = states.mach3 or state = states.Sjumpprep) 
	&& y = other.y + 50 && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
	{
		scr_soundeffect(sfx_door);
	
		lastroom_x = other.x
		lastroom_y = other.y
		lastroom = room
	
		with obj_camera
			chargecamera = 0
		ds_list_add(global.saveroom, id) 



		sprite_index = obj_player1.spr_lookdoor
		targetDoor = other.targetDoor
		targetRoom = other.targetRoom
		image_index = 0		
		state = states.door		
		mach2 = 0
		doorx = other.x + 50
		
		other.visited = true


		instance_create(x,y,obj_fadeout)
	}
}