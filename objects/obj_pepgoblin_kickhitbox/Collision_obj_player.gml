with other
 {
	 
	 if character = "V"
scr_hurtplayer(object_index)
else
	 {
var b = 1

for (i = 0; i <  array_length_1d(transformation)-1; i+=1)
if state = transformation[i]
b = 0

if b = 1
	 if instance_exists(other.baddieID) && state != states.tumble && state != states.knightpep && state != states.knightpepslopes && state != states.parry
	 {
//scr_soundeffect(sfx_oh, sfx_ohman,sfx_hurt1,sfx_hurt2,sfx_hurt3, sfx_mammamia)
state = states.tumble
xscale = other.baddieID.image_xscale
movespeed = 14
vsp = 0
sprite_index = spr_tumble
	 }
	 }
 }