//if sync == false
{
	with instance_place(x+spd, y,obj_shotgunblock)
		instance_destroy()

	with instance_place(x, y-spdh,obj_shotgunblock)
		instance_destroy()

	with instance_place(x+spd,y,obj_destructibles)
	{
		if object_index == obj_onwaybigblock
		{
			if sign(other.image_xscale) == sign(-image_xscale)
				instance_destroy();
		}
		else
			instance_destroy()
	}
	
	/*
	if gms_instance_get(id, "rebound")
		sync = true;
	*/
}

x += spd
y += -spdh