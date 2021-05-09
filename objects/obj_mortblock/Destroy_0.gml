
if  ds_list_find_index(global.saveroom, id) = -1
{ 
ds_list_add(global.saveroom, id) 
repeat(4) 
with instance_create(x,y,obj_debris)
{
sprite_index = spr_mortcubedebris
image_index = choose(0,1)
}


}
