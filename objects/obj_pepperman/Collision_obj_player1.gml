/*
with other
{
	
	if state != states.ejected && other.dead = false
	{
		scr_soundeffect(sfx_pephurt)
		instance_create(x,y,obj_bangeffect)
		repeat(6) instance_create(x,y,obj_slapstar)
state = states.ejected
vsp = -10
	}
}