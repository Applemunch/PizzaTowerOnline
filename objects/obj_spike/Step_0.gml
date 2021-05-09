//Bomb!!
with obj_player1
{
	if state == states.bombpep && !hurted && place_meeting(x,y,other)
	{
		scr_soundeffect(sfx_bombpep2)
		image_index = 0
		hurted = true
		vsp = -4
		sprite_index = spr_bombpepend

		state = states.bombpep
		bombpeptimer = 0
		instance_create(x,y,obj_bombexplosion)
	}
}