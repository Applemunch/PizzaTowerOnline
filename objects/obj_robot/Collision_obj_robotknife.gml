if other.parry && other._id == id
{
	repeat 5
		instance_create(x,y,obj_slapstar)
	instance_create(x,y,obj_bangeffect)
	
	increase_combo();
	instance_destroy();
}