if other.sync
	exit;

if instance_exists(baddieID)
{
	increase_combo();
	if baddieID.object_index != obj_pizzaballOLD
	{
		instance_destroy(baddieID)
		instance_destroy()
	}
	else if baddieID.stuntouchbuffer <= 0
	{
		baddieID.stuntouchbuffer = 20
		scr_soundeffect(sfx_hitenemy)
		
		global.golfhit += 1
		
		instance_create(baddieID.x,baddieID.y,obj_slapstar)
		instance_create(baddieID.x,baddieID.y,obj_baddiegibs)
		
		baddieID.flash = true
		baddieID.state = states.stun

		if baddieID.stunned < 100
			baddieID.stunned = 100
			
		instance_create(x, y, obj_bumpeffect)
		instance_create(baddieID.x, baddieID.y, obj_bangeffect)
		
		baddieID.vsp = -8
		baddieID.hsp = sign(x - other.xstart) * 10;
	}
}