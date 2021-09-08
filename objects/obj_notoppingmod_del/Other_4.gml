if global.modifier == mods.no_toppings
{
	with obj_collect
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
	with obj_bigcollect
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
	with obj_giantcollect
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
	with obj_pizzaslice
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
	with obj_destroyable2
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
	with obj_destroyable2escape
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
	with obj_destroyable2_big
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
	with obj_destroyable2_bigescape
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
	with obj_pizzaslice
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
	with obj_collectescape
	{
		if place_meeting(x, y, other)
			instance_destroy(id, false);
	}
}
else
	instance_destroy();