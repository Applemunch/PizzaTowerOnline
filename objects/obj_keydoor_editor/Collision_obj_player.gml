if room == rm_editor exit;
if index == -1 exit;

if !place_meeting(x,y,obj_doorblocked)
with (other)
{
	if key_up && other.sprite_index = spr_doorvisited && grounded && (state = states.normal or state = states.mach1 or state = states.mach2 or state == states.pogo or state = states.mach3 or state = states.Sjumpprep) 
	&& y = other.y + 50 && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
	{
		var door_id = other.id;
		index = other.index;
	
		scr_soundeffect(sfx_door);
	
		with obj_camera
			chargecamera = 0
	
		sprite_index = spr_lookdoor

		image_index = 0		
		state = states.door
		mach2 = 0
		doorx = other.x + 50;
		
		other.visited = true
		
		with instance_create(x,y,obj_fadeout)
		{
			_id = door_id;
			index = other.index;
			custom_level = true;
		}
	}

}
