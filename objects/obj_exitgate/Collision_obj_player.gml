//Begin cutscene
with other
{
	if other.image_index == 1 && !global.panic && other.visible
	{
		if state == states.comingoutdoor && floor(image_index) == image_number - 2
		{
			scr_soundeffect(sfx_groundpound);
			sprite_index = spr_Timesup;
			image_index = 0;
			
			with obj_camera
			{
				shake_mag = 10;
				shake_mag_acc = 30 / room_speed;
			}
			
			other.image_index = 0;
			ds_list_add(global.saveroom, other.id) ;
		}
	}
	
	if grounded && x > other.x - 160 && x < other.x + 160 && key_up2
	&& (state == states.normal or state == states.mach1 or state == states.mach2 or state == states.mach3)
	&& (global.panic or global.snickchallenge)
	{
		state = states.door;
		doorx = other.x;
		sprite_index = spr_lookdoor;
		image_index = 0;
		
		global.panic = false;
		global.snickchallenge = false;
		
		if !instance_exists(obj_endlevelfade)
			instance_create(x, y, obj_endlevelfade);
	}
}