if shotgun
{
	with instance_place(x + spd, y, obj_shotgunblock)
		instance_destroy()

	with instance_place(x, y - spdh, obj_shotgunblock)
		instance_destroy()
}

with instance_place(x+spd,y,obj_destructibles)
{
	if object_index != obj_hungrypillar or !other.pistol
	{
		if object_index == obj_onwaybigblock
		{
			if sign(other.image_xscale) == sign(-image_xscale)
				instance_destroy();
		}
		else
			instance_destroy()
	}
}

x += spd
y += -spdh

// destroy if outside view
if !point_in_camera(x, y, view_camera[0])
{
	if !oob
		instance_destroy();
}
else
	oob = false;