//Kill
if instance_exists(baddieID) && baddieID.stun = true && (other.state = states.handstandjump or other.state = states.punch or other.instakillmove = true)
{
with (other)
{
sprite_index = choose(spr_suplexmash1,spr_suplexmash2,spr_suplexmash3, spr_suplexmash4, spr_punch)
				image_index =0
				state = states.tackle
				movespeed = 3
				vsp = -3
				instance_destroy(other)	
}

scr_soundeffect(sfx_killenemy)
scr_sleep(50)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_bangeffect)

instance_destroy(baddieID)
instance_destroy()
}