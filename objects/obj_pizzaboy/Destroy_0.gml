
if  ds_list_find_index(global.baddieroom, id) = -1 && important = false
{
	
scr_soundeffect(sfx_killenemy)
scr_sleep(50)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
with (obj_camera) {

    shake_mag=3;
    shake_mag_acc=3/room_speed;
}



with instance_create(x,y,obj_sausageman_dead)
sprite_index = other.spr_dead
}
else if  ds_list_find_index(global.baddieroom, id) = -1 && important = true
{
	

scr_sleep(50)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
with (obj_camera) {

    shake_mag=3;
    shake_mag_acc=3/room_speed;
}



with instance_create(x,y,obj_sausageman_dead)
sprite_index = other.spr_dead	
}


