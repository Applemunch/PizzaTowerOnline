if !drop
{
	instance_create(x, y, obj_bumpeffect)
	hsp = -hsp
	vsp = -3
	drop = true
}
else
{
	instance_destroy()
	instance_create(x, y, obj_bombexplosion)
}

