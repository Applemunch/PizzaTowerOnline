


if  global.panic = true
{

instance_create(room_width/2, -50, obj_pizzaface)
scr_soundeffect(sfx_pizzaface)
alarm[2] = -1
}

if global.miniboss = true
{
		with obj_player
{
	
		instance_create(x,y,obj_bangeffect)
		repeat(6) instance_create(x,y,obj_slapstar)
state = states.ejected
vsp = -10
audio_stop_all()
scr_soundeffect(mu_timesup)

}
alarm[2] = -1
global.miniboss = false

}