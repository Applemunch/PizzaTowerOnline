if other.sync
	exit;

if instance_exists(baddieID) && baddieID.object_index != obj_pizzaballOLD
&& (baddieID.hp <= 1 or obj_player1.character != "V")
{
	instance_destroy()
	instance_destroy(baddieID)
}
else if instance_exists(baddieID) && baddieID.stuntouchbuffer <= 0
{
	baddieID.hp -= 1
	baddieID.stuntouchbuffer = 20

	scr_soundeffect(sfx_hitenemy)
	scr_soundeffect(sfx_machpunch)
		
	global.hit += 1
	if baddieID.object_index == obj_pizzaballOLD
		global.golfhit += 1
	global.combotime = 60
	
	instance_create(baddieID.x,baddieID.y,obj_slapstar)
	instance_create(baddieID.x,baddieID.y,obj_baddiegibs)
	baddieID.flash = true
	baddieID.state = states.stun

	if baddieID.stunned < 100
		baddieID.stunned = 100
	
	instance_create(x,y,obj_bumpeffect)
	instance_create(baddieID.x,baddieID.y,obj_bangeffect)
	
	baddieID.vsp = -4
	baddieID.hsp = other.image_xscale * 5
}

if global.gameplay != 0
	instance_destroy(other);