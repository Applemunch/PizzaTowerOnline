function scr_enemy_hit()
{
	x = hitX + random_range(-6, 6);
	y = hitY + random_range(-6, 6);
	hitLag--;
	sprite_index = stunfallspr;
	
	if hitLag <= 0
	{
	    x = hitX;
	    y = hitY;
	    state = states.stun;
	    vsp = hitvsp;
	    hsp = hithsp;
		
		/*
	    global.hit += 1;
	    if other.object_index == obj_pizzaball
	    or other.object_index == obj_pizzaballOLD
	        global.golfhit += 1;
		*/
		
	    global.combotime = 60;
	    global.heattime = 60;
	    alarm[1] = 5;
	    stunned = 200;
	    thrown = true;
		
	    if hp < -6/* && object_get_parent(object_index) != par_boss*/
	    {
	        instance_destroy();
	        instance_create(x, y, obj_genericpoofeffect);
	    }
	}
}