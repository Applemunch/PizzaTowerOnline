event_inherited();

/*
// SAGE2019
if room == rm_editor {
	exit;
}


if ds_list_find_index(global.baddieroom, id) = -1
{
	ds_list_add(global.baddieroom, id)
	var i = random_range(0,100)
	if i >= 95
	{
		scr_soundeffect(sfx_scream1,sfx_scream2,sfx_scream3,
		sfx_scream4,sfx_scream5,sfx_scream6,sfx_scream7,sfx_scream8,
		sfx_scream9,sfx_scream10)
	}

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
		sprite_index = spr_grandpa_dead
}






if  ds_list_find_index(global.baddieroom, id) = -1
{
ds_list_add(global.baddieroom, id) 
obj_tv.image_index = random_range(0, 4)
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

instance_create(x,y+30,obj_bangeffect)



    with (obj_camera) {

    shake_mag=5;
    shake_mag_acc=20/room_speed;
}


with instance_create(x,y,obj_sausageman_dead)
sprite_index = spr_grandpa_dead


hsp = 0
vsp = 0






    
//Combos
    
global.combo += 1



}


*/