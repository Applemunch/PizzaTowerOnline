if sprite_index = spr_pepperman_charge
{
	spd = clamp(floor(obj_player1.movespeed) - 4, 7, 20) + 1
	x += spd
}


//Make player scream

if obj_player1.state != states.comingoutdoor && screamintro = false
{
with obj_player1
{
	xscale = -1
image_index = 0	
	state =states.backbreaker
	sprite_index = spr_player_bossintro
}
screamintro =true
}

//Start Chase
if obj_player1.state != states.backbreaker && screamintro = true && sprite_index != spr_pepperman_charge && dead = false
{
	instance_create(x,y,obj_peppermancharge)
sprite_index = spr_pepperman_charge
}

if dead = true
{
	if (vsp < 12) vsp += grav;
image_speed = 0

x += hsp;
y += floor(vsp);
}