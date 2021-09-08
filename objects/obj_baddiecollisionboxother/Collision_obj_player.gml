//Kill
if instance_exists(baddieID) && baddieID.stun = true && (other.state = states.handstandjump or other.state = states.punch or other.instakillmove = true)
{
	with other
		scr_pummel();

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