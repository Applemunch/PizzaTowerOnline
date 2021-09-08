if sprite_index == spr_taximove && !instance_exists(obj_fadeout)
{
	with obj_player1
	{
		lastroom = room;
		scr_soundeffect(sfx_door);
		
		with obj_camera
			chargecamera = 0;
		
		targetDoor = other.targetDoor;
		targetRoom = other.targetRoom;
		image_index = 0;	
		mach2 = 0;
		
		instance_create(x, y, obj_fadeout);
	}
}