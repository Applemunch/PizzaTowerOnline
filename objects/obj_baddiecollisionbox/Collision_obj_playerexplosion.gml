if other.sync
	exit;

if instance_exists(baddieID)
{
	if baddieID.object_index != obj_pizzaballOLD
	{
		if global.gameplay == 0
		{
			instance_destroy(baddieID)
			instance_destroy()
		}
		else if baddieID.state != states.hit
		{
			if baddieID.x != other.x
				baddieID.image_xscale = -sign(baddieID.x - other.x);
			
			baddieID.hithsp = 0;
			baddieID.hitvsp = 0;
			scr_hitthrow(baddieID, noone, 10);
		}
	}
	else if baddieID.stuntouchbuffer <= 0
	{
		baddieID.stuntouchbuffer = 20
		scr_soundeffect(sfx_hitenemy)
		
		global.golfhit += 1
		
		repeat 3
		{
			instance_create(baddieID.x, baddieID.y, obj_slapstar)
			instance_create(baddieID.x, baddieID.y, obj_baddiegibs)
		}
		
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