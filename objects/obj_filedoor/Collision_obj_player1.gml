/*
if !place_meeting(x,y,obj_doorblocked)
with (other)
{
	if key_up && grounded && (state == states.normal or state == states.mach1 or state == states.mach2 or state == states.pogo or state == states.mach3 or state == states.Sjumpprep) 
	&& y = other.y + 50 && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
	{
		if !os_is_network_connected()
		{
			scr_soundeffect(sfx_enemyprojectile)
			with obj_roomname
			{
				message = "CONNECT TO NETWORK";
				showtext = true;
				alarm[0] = 200;
			}
		}
		else
		{
			lastroom = room
	
			scr_soundeffect(sfx_door)

			obj_camera.chargecamera = 0
			ds_list_add(global.saveroom, id) 

			sprite_index = spr_lookdoor

			targetDoor = other.targetDoor
			targetRoom = other.targetRoom

			image_index = 0		
			state = states.door		
			mach2 = 0
			
			doorx = other.x + 50
			
			other.visited = true
			other.alarm[0] = 15;
		}
	}
}
