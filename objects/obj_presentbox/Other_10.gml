//Hit the Noise
if character = 0
{
    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}




global.boxhp -= 1
scr_soundeffect(sfx_killenemy)
scr_sleep(50)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)


				ds_list_shuffle(global.boxlist)
			

			
				with obj_presentbox
				{						
				getout = getoutspd
outtime = outtimespd	
sprite_index = spr_present	
				}

}
else {
	    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}
scr_soundeffect(sfx_killenemy)
scr_sleep(50)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)

sprite_index = spr_present	

}

with instance_create(x,y,obj_sausageman_dead)
sprite_index = other.deadspr