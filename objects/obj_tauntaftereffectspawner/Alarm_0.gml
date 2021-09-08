with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  20;
	if !other.legacy
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  -20;
	if !other.legacy
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	vspeed =  20;
	if !other.legacy
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	vspeed =  -20;
	if !other.legacy
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  20;
	vspeed =  20;
	if !other.legacy
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  20;
	vspeed =  -20;
	if !other.legacy
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  -20;
	vspeed =  20;
	if !other.legacy
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  -20;
	vspeed =  -20;
	if !other.legacy
		sprite_index = other.sprite
}

if !legacy
	instance_destroy()