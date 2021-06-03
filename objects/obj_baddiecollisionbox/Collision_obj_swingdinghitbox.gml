if instance_exists(baddieID)
&& baddieID.state != states.grabbed && baddieID.state != states.hit
&& baddieID.object_index != obj_pizzaballOLD
{
	if global.gameplay == 0
	{
		instance_destroy()
		instance_destroy(baddieID)
	}
	else
	{
		scr_soundeffect(sfx_punch);
		
		scr_hitthrow(baddieID, noone);
		baddieID.hp -= 99;
		baddieID.hitLag = 8;
	}
}