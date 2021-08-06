if character == "V"
	scr_hurtplayer(id)

var b = 1

for (i = 0; i <  array_length(transformation)-1; i+=1)
if state = transformation[i]
b = 0

if b = 1
{
	if !cutscene && other.grounded && state != states.bombpep && state != states.parry && state != states.backbreaker && (state == states.handstandjump or state == states.punch or character == "S")
	{
		//scr_soundeffect(sfx_oh, sfx_ohman,sfx_hurt1,sfx_hurt2,sfx_hurt3, sfx_mammamia)
		bombpeptimer = 100
		state = states.bombpep
		image_index = 0
		sprite_index = spr_bombpepintro
		instance_destroy(other)
		tv_push_prompt_once(tv_create_prompt("This is the bomb transformation text", 2, spr_tv_bombpep, 3), "bombpep");
	}
	else if (!hurted && !other.grounded && state != states.parry && state != states.backbreaker)
	{
		instance_destroy(other)	
		instance_create(x,y,obj_bombexplosion)
	}
}