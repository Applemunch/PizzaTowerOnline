if room == rm_editor exit;
if other.state == states.gameover exit;

with other
{
	if place_meeting(x,y,other)
if state != states.bombpep  && state != states.ghost && state != states.knightpep && state != states.cheeseball && state != states.boxxedpep && state != states.cheesepep && state != states.knightpepattack && state != states.knightpepslopes && state != states.hurt
{
instance_destroy(other)
global.key_inv = true
key_particles = true
alarm[7] = 30
  scr_soundeffect(sfx_collecttoppin)
  state = states.keyget
image_index = 0

if room == floor2_roompepperman
	instance_destroy(obj_peppermandestroyable);
}
}

/*
with obj_player2
{
		if place_meeting(x,y,other)
if state != states.bombpep   && state != states.ghost && state != states.knightpep && state != states.cheeseball && state != states.boxxedpep && state != states.cheesepep && state != states.knightpepattack && state != states.knightpepslopes && state != states.hurt
{
instance_destroy(other)
global.key_inv = true
key_particles = true
alarm[7] = 30
  obj_player2.state = states.keyget
obj_player2.image_index = 0
  scr_soundeffect(sfx_collecttoppin)

}
}
*/



