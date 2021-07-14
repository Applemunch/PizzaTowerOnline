if shotgun
{
	with obj_shotgunblock
	{
		if place_meeting(x - other.spd, y, other)
			instance_destroy();
		if place_meeting(x, y + other.spdh, other)
			instance_destroy();
	}
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

with instance_place(x+spd,y,obj_mortblock)
{
	if other.sprite_index == spr_mortprojectile
		instance_destroy();
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