if y > room_height + 210
{
	with (obj_camera)
	{
	    shake_mag=20;
	    shake_mag_acc=40/room_speed;
	}
	instance_destroy()
}