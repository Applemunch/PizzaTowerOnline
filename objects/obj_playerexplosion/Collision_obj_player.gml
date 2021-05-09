with other
{
	if other.sync && !hurted && !instance_exists(obj_parryhitbox)
	{
		scr_hurtplayer_weak(id);
		if x != other.x
			xscale = -sign(x - other.x);
	}
}