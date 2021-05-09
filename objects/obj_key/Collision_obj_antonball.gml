with obj_player1
{
	instance_destroy(other)
	global.key_inv = true
	key_particles = true
	alarm[7] = 30
	scr_soundeffect(sfx_collecttoppin)
}