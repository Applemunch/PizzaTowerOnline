if sprite_index = spr_taximove
{
	with obj_player1
	{
		lastroom = room
		scr_soundeffect(sfx_door)

		obj_camera.chargecamera = 0
		ds_list_add(global.saveroom, id) 


		targetDoor = other.targetDoor
		targetRoom = other.targetRoom
		image_index = 0			
		mach2 = 0

		instance_create(x,y,obj_fadeout)
	}
}