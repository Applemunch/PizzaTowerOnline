

if place_meeting(x,y,obj_player) && activated = false
{
	with (obj_player1)
	{
	
		if character = "P" && other.activated = false
		{
						x = other.x
		
		character  = "N"
		other.activated = true
		vsp = 1

other.alarm[0] = 50
scr_characterspr()
	taunttimer = 20
tauntstoredmovespeed = 0
tauntstoredsprite = spr_fall
tauntstoredstate = states.jump
scr_soundeffect(sfx_taunt)
	state = states.backbreaker
	image_index = random_range(0, sprite_get_number(spr_taunt)-1)
	sprite_index = spr_taunt
instance_create(x,y,obj_taunteffect)	
		
		}
		
	}
	instance_create(x,y,obj_bombexplosion)
	with instance_create(x,y,obj_sausageman_dead)
	{
	sprite_index = spr_peppinodead
	depth = -30
	}
instance_destroy()
 }