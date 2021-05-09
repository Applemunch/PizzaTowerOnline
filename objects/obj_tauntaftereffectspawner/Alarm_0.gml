with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  20;
	if obj_player1.character != "S"
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  -20;
	if obj_player1.character != "S"
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	vspeed =  20;
	if obj_player1.character != "S"
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	vspeed =  -20;
	if obj_player1.character != "S"
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  20;
	vspeed =  20;
	if obj_player1.character != "S"
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  20;
	vspeed =  -20;
	if obj_player1.character != "S"
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  -20;
	vspeed =  20;
	if obj_player1.character != "S"
		sprite_index = other.sprite
}
with instance_create(x,y,obj_tauntafterimage)
{
	hspeed =  -20;
	vspeed =  -20;
	if obj_player1.character != "S"
		sprite_index = other.sprite
}

if obj_player1.character != "S"
&& obj_player1.character != "G"
	instance_destroy()