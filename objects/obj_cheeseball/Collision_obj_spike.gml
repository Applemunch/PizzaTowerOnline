/*
if obj_player1.state = states.cheeseball
{
with (obj_player1)
{
    scr_soundeffect(sfx_loseknight)
    obj_player1.grav = 0.5
    instance_create(x,y,obj_slimedebris) 
    instance_create(x,y,obj_slimedebris) 
    instance_create(x,y,obj_slimedebris) 
    instance_create(x,y,obj_slimedebris) 
    instance_create(x,y,obj_slimedebris)
    instance_create(x,y,obj_slimedebris) 
    instance_create(x,y,obj_slimedebris) 
    instance_create(x,y,obj_slimedebris) 
    instance_create(x,y,obj_slimedebris) 
    instance_destroy(other)
        if x != other.x
    {
    obj_player1.hsp = sign(x - other.x) * 5;
    }
    else obj_player1.hsp = 5
     vsp = -3
     obj_player1.visible = true
     image_index = 0
    obj_player1.image_index = 0
    obj_player1.flash = true
    state = states.bump

    }
}
else
{
*/
	instance_destroy()
//}